#!/bin/zsh

label_re='^([a-z0-9\_-]*)(\)|\|\\)$' 
endlabel_re='^(    |\t);;$'

# Set the directory where the labels will be stored
label_dir="/Users/andrewbarnett/Documents/GitHub/Installomator/fragments/labels"
# Set the file where the labels will be stored
labels_file="/Users/andrewbarnett/Documents/GitHub/Installomator/labels.txt"
# Set the path to the Installomator script
installomatorScript="/Users/andrewbarnett/Documents/GitHub/Installomator/InstallomatorCustom.sh"
# Set the path to the log file (optional) 
log_file="/var/log/extractLabels.log"



IFS=$'\n'

in_label=0
current_label=""

# Create log file if the variable is set
if [[ -n "$log_file" ]]; then
    touch "$log_file" || true
    echo "Log file created: $log_file"
else
    echo "No log file specified"
    log_file="/dev/null"
fi

# Redirect all output to the log file
infoOut() {
    echo "Extract Labels: $(date +%Y-%m-%d\ %H:%M:%S) - ${1}" | tee -a "$log_file"
}

infoOut "Extracting labels from InstallomatorCustom.sh"

# Read the Installomator script line by line
while read -r line; do 
    # Detect the start of a label
    if [[ $in_label -eq 0 && "$line" =~ $label_re ]]; then
        label_name=${match[1]}
        infoOut "Found label: $label_name"
        in_label=1
    fi
    
    # Capture the entire label block
    if [[ $in_label -eq 1 ]]; then
        current_label+=$'\n'$line
    fi
    
    # Detect the end of the label
    if [[ $in_label -eq 1 && "$line" =~ $endlabel_re ]]; then
        label_file="$label_dir/${label_name}.sh"
        
        # Check if label file exists and compare content
        if [[ -f "$label_file" ]]; then
            if ! diff -q <(echo "$current_label") "$label_file" > /dev/null; then
                infoOut "Updating $label_file (changes detected)"
                echo "$current_label" > "$label_file"
            else
                infoOut "No changes detected for $label_name, skipping update"
            fi
        else
            infoOut "Creating new label file: $label_file"
            echo "$current_label" > "$label_file"
        fi
        
        in_label=0
        current_label=""
        
        # Update labels.txt if the label is missing
        if ! grep -q "^${label_name}$" "$labels_file"; then
            infoOut "Adding label $label_name to Labels.txt"
            echo "$label_name" >> "$labels_file"
            cp -p "$labels_file" "$labels_file.tmp"
            sort -o "$labels_file.tmp" "$labels_file.tmp"
            mv "$labels_file.tmp" "$labels_file"
        fi
    fi
    
done < "$installomatorScript"

infoOut "Extraction complete"
exit 0
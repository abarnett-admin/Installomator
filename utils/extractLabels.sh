label_re='^([a-z0-9\_-]*)(\)|\|\\)$' 
endlabel_re='^(    |\t);;$'

label_dir="fragments/labels"
# add labels.txt file location here to update the labels
labels_file=""
# add Installomator.sh file location here to update the labels
installomatorScript=""

IFS=$'\n'

in_label=0
current_label=""
while read -r line; do 
    if [[ $in_label -eq 0 && "$line" =~ $label_re ]]; then
        label_name=${match[1]}
        echo "found label $label_name"
        in_label=1
    fi
    if [[ $in_label -eq 1 ]]; then
        current_label=$current_label$'\n'$line
    fi
    if [[ $in_label -eq 1 && "$line" =~ $endlabel_re ]]; then
        echo $current_label > "$label_dir/${label_name}.sh"
        in_label=0
        current_label=""
        
        # Check if label is present in Labels.txt
        if ! grep -q "^${label_name}$" "$labels_file"; then
            echo "Adding label $label_name to Labels.txt"
            # Add the new label to the file
            echo "$label_name" >> "$labels_file"
            # Sort the whole file and preserve permissions
            cp -p "$labels_file" "$labels_file.tmp"
            sort -o "$labels_file.tmp" "$labels_file.tmp"
            mv "$labels_file.tmp" "$labels_file"
        fi
    fi
    
done < "$installomatorScript"
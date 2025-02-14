
grooveomnidialerenterpriseedition)
	name="Groove Omnidialer Enterprise Edition"
	type="zip"
	appNewVersion=$( curl -fs 'https://groove-dialer.s3.us-west-2.amazonaws.com/electron/enterprise/latest-mac.yml' | grep ^version: | cut -c 10-21 ) 
	downloadURL="https://groove-dialer.s3.us-west-2.amazonaws.com/electron/enterprise/Groove+OmniDialer+Enterprise+Edition-"$appNewVersion"-universal-mac.zip" 
	expectedTeamID="ZDYDJ5XPF3"
;;
guardianbrowser)
	# A privacy-focused web browser designed to enhance security with built-in ad blocking, tracker protection, and encrypted browsing
    name="Guardian Browser"
    type="dmg"
    if [[ $(arch) == i386 ]]; then
       downloadURL="https://production-archimedes-secure-browser-artifacts.s3.amazonaws.com/latest/mac-x64/guardian-browser-x64.dmg"
    elif [[ $(arch) == arm64 ]]; then
       downloadURL="https://production-archimedes-secure-browser-artifacts.s3.amazonaws.com/latest/mac-arm64/guardian-browser-arm64.dmg"
    fi
    expectedTeamID="7TCATJSU2Y"
;;
gyazo)
    # credit: @matins
    name="Gyazo"
    type="dmg"
    appNewVersion=$(curl -is "https://formulae.brew.sh/cask/gyazo" | grep 'Current version:' | grep -o "Gyazo.*dmg" | cut -d "-" -f 2 | awk -F ".dmg" '{print $1}')
    downloadURL="https://files.gyazo.com/setup/Gyazo-${appNewVersion}.dmg"
    expectedTeamID="9647Y3B7A4"
    ;;

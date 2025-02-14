
smartsheet)
	name="Smartsheet"
	type="dmg"
	downloadURL="https://smartsheet-desktop-app-builds.s3.amazonaws.com/public/darwin/Smartsheet-setup.dmg"
	appNewVersion=$(curl -fsl 'https://smartsheet-desktop-app-builds.s3.amazonaws.com/public/darwin/latest-mac.yml' | sed -nE 's/^version: (.*)/\1/p')
	expectedTeamID="J89ET3PY68"
	;;
smartsvn)
    name="SmartSVN"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://www.smartsvn.com$(curl -fsL "https://www.smartsvn.com/download/" | grep -oE "href=\".*-aarch64.*\.dmg\"" | cut -d '"' -f 2)"
    elif [[ $(arch) == "i386" ]]; then
        downloadURL="https://www.smartsvn.com$(curl -fsL "https://www.smartsvn.com/download/" | grep -oE "href=\".*-x86_64.*\.dmg\"" | cut -d '"' -f 2)"
    fi
    appNewVersion=$(curl -fsL "https://www.smartsvn.com/download/" | grep -B 1 "changelog.txt" | grep "Version " | awk -F' ' '{ print $2 }')
    expectedTeamID="PHMY45PTNW"
    ;;

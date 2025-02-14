
clickup)
	name="ClickUp"
	type="dmg"
	if [[ $(arch) == "arm64" ]]; then
		appNewVersion=$(curl -sD /dev/stdout https://desktop.clickup.com/mac/dmg/arm64 | grep filename | sed 's/^.*[^0-9]\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1/')
		downloadURL="https://desktop.clickup.com/mac/dmg/arm64"
	elif [[ $(arch) == "i386" ]]; then
        appNewVersion=$(curl -sD /dev/stdout https://desktop.clickup.com/mac | grep filename | sed 's/^.*[^0-9]\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1/')
        downloadURL="https://desktop.clickup.com/mac"
	fi
	expectedTeamID="5RJWFAUGXQ"
	;;
clipgrab)
    name="ClipGrab"
    type="dmg"
    expectedTeamID="E8BJ3ZV5W8"
    downloadURL="$( curl -s 'https://clipgrab.org' | tr '"' '
' | grep dmg )"
    appNewVersion="$( echo "$downloadURL" | sed -E 's/.*-([0-9.]*).dmg/\1/' )"
    ;;


microsoftonedrive)
    # This version match the Last Released Production version setting of OneDrive update channel. It’s default if no update channel setting for OneDrive updates has been specified. Enterprise (Deferred) is also supported with label “microsoftonedrive-deferred”.
    # https://support.microsoft.com/en-us/office/onedrive-release-notes-845dcf18-f921-435e-bf28-4e24b95e5fc0#OSVersion=Mac
    name="OneDrive"
    type="pkg"
    continueBlocking="true"
    versionKey="CFBundleShortVersionString"
    downloadURL="https://go.microsoft.com/fwlink/?linkid=861011"
    #appNewVersion=$(curl -fs https://macadmins.software/latest.xml | xpath '//latest/package[id="com.microsoft.onedrive.standalone"]/cfbundleshortversionstring' 2>/dev/null | sed -E 's/<cfbundleshortversionstring>([0-9.]*)<.*/\1/')
    appNewVersion=$(curl -fsIL "${downloadURL}" | grep -i location: | grep -o "/Installers/.*pkg" | sed -r 's/(.*)\.pkg/\1/g' | sed 's/[^0-9\.]//g')
     #appCustomVersion(){defaults read /Applications/nextcloud.app/Contents/Info.plist CFBundleShortVersionString | sed -E 's/^([0-9.]*)git.*/\1/g'}
     appCustomVersion(){defaults read /Applications/OneDrive.app/Contents/Info.plist CFBundleVersion | sed -E 's/^([0-9]{2})([0-9]{3})(\.[0-9]{4}\.[0-9]{4})$/\1.\2\3/'}
    expectedTeamID="UBF8T346G9"
    # if [[ -x "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
    #     printlog "Running msupdate --list"
    #     "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" --list
    # fi
    # updateTool="/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate"
    # updateToolArguments=( --install --apps ONDR18 )
    ;;

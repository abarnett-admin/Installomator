
microsoftexcel)
    name="Microsoft Excel"
    type="pkg"
    continueBlocking="true"
    versionKey="CFBundleVersion"
    downloadURL=$(curl -s https://learn.microsoft.com/en-us/officeupdates/update-history-office-for-mac | grep -i "Excel" | grep -o 'https://[^"]*' | grep "Excel" | head -n 1)
    appNewVersion=$(basename "$downloadURL" | sed -E 's/^Microsoft_[^_]+_([0-9]+\.[0-9]+\.[0-9]+)_.*/\1/')
    expectedTeamID="UBF8T346G9"
    # if [[ -x "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
    #     printlog "Running msupdate --list"
    #     "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate" --list
    # fi
    # updateTool="/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate"
    # updateToolArguments=( --install --apps XCEL2019 )
    ;;

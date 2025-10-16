
microsoftcompanyportal)
    name="Company Portal"
    type="pkg"
    downloadURL="https://go.microsoft.com/fwlink/?linkid=853070"
    expectedTeamID="UBF8T346G9"
    msAppID="IMCP01"
    updateTool="/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/msupdate"
    updateToolArgs=( --install --apps "$msAppID" )

    # Optional: show what msupdate knows about
    if [[ -x "$updateTool" && $INSTALL != "force" && $DEBUG -eq 0 ]]; then
        printlog "Running msupdate --list"
        # capture but don't fail the flow if list fails
        updatable=$("$updateTool" --list 2>/dev/null) || updatable=""
        if [[ -n "$updatable" ]]; then
            printlog "$updatable"
        fi
    fi
    ;;

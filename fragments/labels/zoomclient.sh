
zoomclient)
    name="zoom.us"
    type="pkg"
    packageID="us.zoom.pkg.videomeeting"
    if [[ $(arch) == i386 ]]; then
       downloadURL="https://zoom.us/client/latest/Zoom.pkg"
    elif [[ $(arch) == arm64 ]]; then
       downloadURL="https://zoom.us/client/latest/Zoom.pkg?archType=arm64"
    fi
    expectedTeamID="BJ4HAAB9B3"
    appNewVersion=$(curl -s "https://support.zoom.com/hc/en/article?id=zm_kb&sysparm_article=KB0061222" | grep -A 20 "<h2[^>]*>Released<\/h2>" | grep -A 10 "macOS" | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+ \([0-9]+\)' | head -n 2 | tail -n 1)
    blockingProcesses=( zoom.us )
    #blockingProcessesMaxCPU="5"
    ;;

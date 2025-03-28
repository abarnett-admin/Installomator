
topazvideo|\
topazvideoai)
    name="Topaz Video AI"
    type="pkg"
    appNewVersion=$(curl -fs https://www.topazlabs.com/downloads | grep  -o 'videoVersion = "v.*"' | grep -o ' "v.*"' | sed -E 's/[v|"| ]//g')
    downloadURL="https://topazlabs.com/d/tvai/latest/mac/full"
    archiveName="TopazVideoAI-${appNewVersion}.pkg"
    expectedTeamID="3G3JE37ZHF"
     ;;
torbrowser)
    # credit: Søren Theilgaard (@theilgaard)
    name="Tor Browser"
    type="dmg"
    downloadURL=https://www.torproject.org$(curl -fs https://www.torproject.org/download/ | grep "downloadLink" | grep dmg | head -1 | cut -d '"' -f 4)
    appNewVersion=$(curl -fs https://www.torproject.org/download/ | grep "downloadLink" | grep dmg | head -1 | cut -d '"' -f 4 | cut -d / -f 4)
    expectedTeamID="MADPSAYN6T"
    ;;

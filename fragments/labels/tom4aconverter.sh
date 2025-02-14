
tom4aconverter)
     name="To M4A Converter"
     type="dmg"
     downloadURL="https://amvidia.com/downloads/to-m4a-converter-mac.dmg"
     appNewVersion=$(curl -sf "https://amvidia.com/to-m4a-converter" | grep -o -E '"softwareVersion":.'"{8}" | sed 's/\"//g' | awk -F ': ' '{print $2}')
     expectedTeamID="F2TH9XX9CJ"
     ;;
torbrowser)
    # credit: Søren Theilgaard (@theilgaard)
    name="Tor Browser"
    type="dmg"
    downloadURL=https://www.torproject.org$(curl -fs https://www.torproject.org/download/ | grep "downloadLink" | grep dmg | head -1 | cut -d '"' -f 4)
    appNewVersion=$(curl -fs https://www.torproject.org/download/ | grep "downloadLink" | grep dmg | head -1 | cut -d '"' -f 4 | cut -d / -f 4)
    expectedTeamID="MADPSAYN6T"
    ;;

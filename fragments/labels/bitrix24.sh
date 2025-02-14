
bitrix24)
     name="Bitrix24"
     type="dmg"
     archiveName="bitrix24_desktop.dmg"
     downloadURL="https://dl.bitrix24.com/b24/bitrix24_desktop.dmg"
     expectedTeamID="5B3T3A994N"
     blockingProcesses=( "Bitrix24" )
     ;;
bitwarden)
    name="Bitwarden"
    type="dmg"
    appNewVersion=$(curl -s "https://github.com/bitwarden/clients/releases?q\=desktop" | xmllint --html --xpath 'substring-after(string(//h2[starts-with(text(),"Desktop v")]), " v")' - 2>/dev/null)
    downloadURL="https://github.com/bitwarden/clients/releases/download/desktop-v${appNewVersion}/Bitwarden-${appNewVersion}-universal.dmg"
    expectedTeamID="LTZ2PFU5D6"
    ;;

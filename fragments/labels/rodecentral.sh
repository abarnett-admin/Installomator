
rodecentral)
    name="RODE Central"
    type="pkgInZip"
    #packageID="com.rodecentral.installer"
    downloadURL="https://update.rode.com/central/RODE_Central_MACOS.zip"
    appNewVersion=$(curl -fs https://rode.com/en/release-notes/rode-central | xmllint --html --format - 2>/dev/null | tr '"' '
' | sed 's/\&quot\;/
/g' | grep -i -o "Version .*" | cut -w -f2 | tail -n +2 | head -1)
    expectedTeamID="Z9T72PWTJA"
    ;;

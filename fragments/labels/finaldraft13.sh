
finaldraft13)
    #credit to @adamcodega on Slack for helping to fix the curl
    name="Final Draft 13"
    type="appInDmgInZip"
    downloadURL=$(curl -fs "https://www.finaldraft.com/support/install-final-draft/install-final-draft-13-macintosh/" | xmllint --html --xpath 'string(//a[contains(@href,"Mac.zip")]/@href)' - 2>/dev/null)
    appNewVersion=$(echo "$downloadURL" | sed -nE 's/.*finaldraft([0-9]{2})([0-9])([0-9]?)Mac.*/\1.\2.\3/p' | sed 's/\.$//')
    versionKey="CFBundleShortVersionString"
    expectedTeamID="7XUZ8R5736"
    ;;

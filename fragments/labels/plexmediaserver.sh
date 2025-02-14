
plexmediaserver)
	name="Plex Media Server"
	type="zip"
    plexDetails="$(curl -fs "https://plex.tv/api/downloads/5.json")"
    appNewVersion="$(cut -d'-' -f1 <<< "$(getJSONValue "$plexDetails" "computer.MacOS.version")")"
    downloadURL=$(getJSONValue "$plexDetails" "computer.MacOS.releases[0].url")
	versionKey="CFBundleShortVersionString"
	expectedTeamID="K4QJ56KR4A"
;;
plisteditpro)
    name="PlistEdit Pro"
    type="zip"
    downloadURL="https://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip"
    appNewVersion="$(curl -fs "https://www.fatcatsoftware.com/plisteditpro/downloads/appcast.xml" | xpath 'string(//rss/channel/item/sparkle:shortVersionString)' 2>/dev/null)"
    expectedTeamID="8NQ43ND65V"
    ;;

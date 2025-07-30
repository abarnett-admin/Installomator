
obsbotcenter|\
obsbotwebcam)
name="OBSBOT_Center"
type="dmg"

# Extract downloadURL
downloadURL=$(curl -fsL "https://www.obsbot.com/download/obsbot-tiny-series" | grep -o 'url_mac:"https:\u002F\u002F[^"]*' | head -n 1 | sed -E 's/url_mac:"https:\u002F\u002F(.*)/https:\/\/\1/' | sed 's/\u002F/\//g')

# Extract appNewVersion
appNewVersion=$(curl -fsL "https://www.obsbot.com/download/obsbot-tiny-series" | xmllint --html --xpath 'string(//div[contains(@class,"pl-title")][contains(text(),"macOS")])' - 2>/dev/null | sed -E 's/.*macOS v([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*/\1/')

# If appNewVersion is not found, extract it from the download URL as a fallback
if [[ -z "$appNewVersion" ]]; then
  appNewVersion=$(echo "$downloadURL" | sed -E 's/.*_MacOS_([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)_release.*/\1/')
fi

# Add the version to the download URL
downloadURL="${downloadURL//_MacOS_[^_]*_release/_MacOS_${appNewVersion}_release}"

expectedTeamID="7GJANK3822"
    ;;

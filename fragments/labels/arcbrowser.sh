arcbrowser)
name="Arc"
type="dmg"
downloadURL="https://releases.arc.net/release/Arc-latest.dmg"
appNewVersion="$(curl -fsIL -o /dev/null -w '%{url_effective}' https://releases.arc.net/release/Arc-latest.dmg | sed -E 's/.*-([0-9]+\.[0-9]+\.[0-9]+)-[0-9]+.*/\1/')"
expectedTeamID="S6N382Y83G"
    ;;

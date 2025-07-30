
warp)
    name="Warp"
    type="dmg"
    downloadURL="https://app.warp.dev/download"
    appNewVersion=$(curl -s https://releases.warp.dev/channel_versions.json | grep '"stable"' -A3 | grep '"version"' | head -1 | sed -E 's/[^"]*"version": ?"v?([0-9]+(\.[0-9]+)*).*/\1/')
    expectedTeamID="2BBY89MBSN"
    ;;

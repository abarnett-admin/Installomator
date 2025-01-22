cloudflarewarp)
    name="Cloudflare_WARP"
    type="pkg"
    packageID="com.cloudflare.1dot1dot1dot1.macos"
    downloadURL="https://1111-releases.cloudflareclient.com/mac/latest"
    appNewVersion=$(curl -s "https://developers.cloudflare.com/cloudflare-one/changelog/warp/" | grep -o "WARP client for macOS (version [0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+)" | sed -E 's/.*version ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*/\1/' | head -n 1)
    expectedTeamID="68WVV388M8"
    ;;
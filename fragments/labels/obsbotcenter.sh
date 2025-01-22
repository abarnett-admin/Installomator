obsbotwebcam|\
obsbotcenter)
    name="OBSBOT_Center"
    type="dmg"
    baseURL="https://www.obsbot.com"
    downloadURL=$(curl -fsL "https://www.obsbot.com/download/obsbot-tiny-series" | xmllint --html --xpath 'string(//a[contains(@href,"obsbot_center_oa_e_mac_os")]/@href)' - 2> /dev/null)
    appNewVersion=$(echo "$downloadURL" | sed -nE 's/.*mac_os_([0-9_]+)_release.*/\1/p' | tr '_' '.')
    expectedTeamID="7GJANK3822"
    ;;
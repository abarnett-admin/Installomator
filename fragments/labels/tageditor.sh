
tageditor)
     name="Tag Editor"
     type="dmg"
     downloadURL="https://amvidia.com/downloads/tag-editor-mac.dmg"
     appNewVersion=$(curl -sf "https://amvidia.com/tag-editor" | grep -o -E '"softwareVersion":.'"{8}" | sed -E 's/.*"([0-9.]*).*/\1/g')
     expectedTeamID="F2TH9XX9CJ"
     ;;
tailscale)
    name="Tailscale"
    type="zip"
    appNewVersion="$(curl -s https://pkgs.tailscale.com/stable/ | awk -F- '/Tailscale.*macos.zip/ {print $2}')"
    downloadURL="https://pkgs.tailscale.com/stable/Tailscale-${appNewVersion}-macos.zip"
    expectedTeamID="W5364U7YZB"
    versionKey="CFBundleShortVersionString"
    ;;

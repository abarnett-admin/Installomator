
darktable)
    # credit: Søren Theilgaard (@theilgaard)
    name="darktable"
    type="dmg"
    # Detect macOS architecture
    arch=$(uname -m)
    if [[ "$arch" == "arm64" ]]; then
        archSuffix="arm64"
    else
        archSuffix="x86_64"
    fi
    # Fetch the latest release assets from GitHub and filter based on architecture
    downloadURL=$(curl -sfL "https://api.github.com/repos/darktable-org/darktable/releases/latest" | \
        awk -F '"' "/browser_download_url/ && /$archSuffix\.dmg/ { print \$4; exit }")
    # Get the latest version from GitHub
    appNewVersion=$(versionFromGit darktable-org darktable)
    expectedTeamID="85Q3K4KQRY"
    ;;

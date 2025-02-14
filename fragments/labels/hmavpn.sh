
hmavpn)
name="HMA-VPN"
type="pkgInDmg"
packageID="com.privax.osx.provpn"
downloadURL="https://s-mac-sl.avcdn.net/macosx/privax/HMA-VPN.dmg"
appNewVersion=""
expectedTeamID="96HLSU34RN"
;;
homebrew)
    name="Homebrew"
    type="pkg"
    packageID="sh.brew.homebrew"
    downloadURL="$(downloadURLFromGit Homebrew brew)"
    appNewVersion="$(versionFromGit Homebrew brew)"
    expectedTeamID="927JGANW46"
    archiveName="Homebrew.pkg"
    ;;

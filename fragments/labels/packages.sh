
packages)
   name="Packages"
   type="pkgInDmg"
   pkgName="Install Packages.pkg"
    pkgsDetails="$(curl -fs "http://s.sudre.free.fr/Software/documentation/RemoteVersion.plist")"
    appNewVersion=$(echo "${pkgsDetails}"| xpath 'string(//dict/string[1])' 2>/dev/null)
    downloadURL=$(echo "${pkgsDetails}"| xpath 'string(//dict/string[2])' 2>/dev/null)
   expectedTeamID="NL5M9E394P"
   ;;
pandoc)
    name="Pandoc"
    type="pkg"
    packageID="net.johnmacfarlane.pandoc"
    downloadURL=$(downloadURLFromGit jgm pandoc )
    appNewVersion=$(versionFromGit jgm pandoc )
    archiveName="mac.pkg"
    expectedTeamID="5U2WKE6DES"
    ;;

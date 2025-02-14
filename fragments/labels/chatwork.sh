
chatwork)
     name="Chatwork"
     type="dmg"
     downloadURL="https://desktop-app.chatwork.com/installer/Chatwork.dmg"
     expectedTeamID="H34A3H2Y54"
     ;;
chemdoodle|\
chemdoodle2d)
     name="ChemDoodle"
     type="dmg"
     [[ $(arch) == "arm64" ]] && cpu_arch="aarch64" || cpu_arch="x64"
     downloadURL="https://www.ichemlabs.com$(curl -s -L https://www.ichemlabs.com/download | grep -oE '[^"]*Doodle-[^"]*'$cpu_arch'[^"]*\.dmg' | head -1)"
     expectedTeamID="9XP397UW95"
     folderName="ChemDoodle"
     appName="${folderName}/ChemDoodle.app"
     appNewVersion=$(sed -E 's/.*-(.*).dmg/\1/g' <<< $downloadURL )
     versionKey="CFBundleVersion"
     ;;
chemdoodle3d)
     name="ChemDoodle3D"
     type="dmg"
     [[ $(arch) == "arm64" ]] && cpu_arch="aarch64" || cpu_arch="x64"
     downloadURL="https://www.ichemlabs.com$(curl -s -L https://www.ichemlabs.com/download | grep -oE '[^"]*Doodle3D-[^"]*'$cpu_arch'[^"]*\.dmg' | head -1)"
     expectedTeamID="9XP397UW95"
     folderName="ChemDoodle3D"
     appName="${folderName}/ChemDoodle3D.app"
     appNewVersion=$(sed -E 's/.*-(.*).dmg/\1/g' <<< $downloadURL )
     versionKey="CFBundleVersion"
     ;;
cherryaudioatomika)
    name="Atomika"
    type="pkg"
    packageID="com.cherryaudio.pkg.AtomikaPackage-StandAlone"
    appNewVersion="$(curl -fs https://cherryaudio.com/products/atomika-synthesizer/version-history | grep -A 6 "info" | grep -Eo "([0-9]+(\.[0-9]+)+)" | head -1 | xargs)"
    downloadURL="https://store.cherryaudio.com/downloads/atomika-synthesizer-macos-installer?file=Atomika-Installer-macOS.pkg"
    expectedTeamID="A2XFV22B2X"
    ;;

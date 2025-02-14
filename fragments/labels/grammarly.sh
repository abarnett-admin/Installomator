
grammarly)
     name="Grammarly Desktop"
     type="dmg"
     packageID="com.grammarly.ProjectLlama"
     downloadURL="https://download-mac.grammarly.com/Grammarly.dmg"
     expectedTeamID="W8F64X92K3"
     # appName="Grammarly Installer.app"
     installerTool="Grammarly Installer.app"
     CLIInstaller="Grammarly Installer.app/Contents/MacOS/Grammarly Desktop"
;;
grandperspective)
    name="GrandPerspective"
    type="dmg"
    downloadURL="https://sourceforge.net/projects/grandperspectiv/files/latest/download"
    appNewVersion=$(curl -fs https://sourceforge.net/projects/grandperspectiv/files/grandperspective/ | grep -B 2 'Download Latest Version' | grep -oE '\/(\d|\.)+\/' | sed 's/\///g')
    expectedTeamID="3Z75QZGN66"
    ;;

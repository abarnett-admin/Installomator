
sipgateclinq)
    name="Sipgate CLINQ"
    type="dmg"
    appNewVersion=$(curl -fs -L https://desktop.download.sipgate.com/latest-mac.yml | sed -n 's/version: \(.*\)/\1/p')
    downloadURL="https://desktop.download.sipgate.com/sipgate%20CLINQ-${appNewVersion}.dmg"
    expectedTeamID="K4L4M6DD76"
;;

sirimote)
    name="SiriMote"
    type="zip"
    downloadURL="http://bit.ly/sirimotezip"
    #appNewVersion="" # Not found on web page
    expectedTeamID="G78RJ6NLJU"
    ;;

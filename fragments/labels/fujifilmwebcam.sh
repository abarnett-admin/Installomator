
fujifilmwebcam)
     name="FUJIFILM X Webcam 2"
     type="pkg"
     downloadURL=$(curl -fs "https://fujifilm-x.com/en-us/support/download/software/x-webcam/" | grep "https.*pkg" | sed -E 's/.*(https:\/\/dl.fujifilm-x\.com\/support\/software\/.*\.pkg[^\<]).*/\1/g' | sed -e 's/^"//' -e 's/"$//')
     appNewVersion=$( echo “${downloadURL}” | sed -E 's/.*XWebcamIns([0-9]*).*/\1/g' | sed -E 's/([0-9])([0-9]).*/\1\.\2/g')
     expectedTeamID="34LRP8AV2M"
     ;;
garminexpress)
    name="Garmin Express"
    blockingProcesses=( "Garmin Express" "Garmin Express Service" )
    type="pkgInDmg"
    downloadURL="https://download.garmin.com/omt/express/GarminExpress.dmg"
    garminfaqURL=$(curl -sf https://support.garmin.com/capi/content/en-US/\?productID\=168768\&tab\=software\&topicTag\=region_softwareproduct\&productTagName\=topic_express0\&ct\=content\&mr\=5\&locale\=en-US\&si\=0\&tags\=topic_express0%2Cregion_softwareproduct%2C%2C | tr "{" "
" | grep "Garmin Express" | tr "," "
" | grep "contentURL" | awk -F "\"" '{print$4}')
    appNewVersion="$(curl -sfL $garminfaqURL | tr '><' "
" | grep "Garmin Express for Mac" | head -1 | awk 'sub(/.*Mac: */,""){f=1} f{if ( sub(/ *as of.*/,"") ) f=0; print}').0"
    expectedTeamID="72ES32VZUA"
    appName="Garmin Express.app"
    ;;


connectfonts)
name="Connect Fonts"
type="dmg"
downloadURL="https://links.extensis.com/connect_fonts/cf_latest?language=en&platform=mac"
appNewVersion=$( curl -is "$downloadURL" | grep "location:" | grep -o "[[:digit:]]\+-[[:digit:]]\+-[[:digit:]]\+" | sed -e 's/-/./g' )
expectedTeamID="J6MMHGD9D6"
;;
cormorant)
    # credit: Søren Theilgaard (@theilgaard)
    name="Cormorant"
    type="zip"
    downloadURL=$(curl -fs https://eclecticlight.co/downloads/ | grep -i $name | grep zip | sed -E 's/.*href=\"(https.*)\">.*/\1/g')
    appNewVersion=$(curl -fs https://eclecticlight.co/downloads/ | grep zip | grep -o -E "$name [0-9.]*" | awk '{print $2}')
    expectedTeamID="QWY4LRW926"
    ;;

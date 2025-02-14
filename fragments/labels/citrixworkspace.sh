
citrixworkspace)
    #credit: Erik Stam (@erikstam) and #Philipp on MacAdmins Slack
    name="Citrix Workspace"
    type="pkgInDmg"
    curlOptions=( --user-agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36")
    parseURL() {
        urlToParse='https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html#ctx-dl-eula-external'
        htmlDocument=$(curl -s -L $urlToParse $curlOptions)
        xmllint --html --xpath "string(//a[contains(@rel, 'downloads.citrix.com')]/@rel)" 2> /dev/null <(print $htmlDocument)
    }
    downloadURL="https:$(parseURL)"
    newVersionString() {
        urlToParse='https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html'
         htmlDocument=$(curl -fs $urlToParse $curlOptions)
         xmllint --html --xpath 'string(//p[contains(., "Version")])' 2> /dev/null <(print $htmlDocument)
     }
     appNewVersion=$(newVersionString | cut -d ' ' -f2 | cut -d '(' -f1)
     versionKey="CitrixVersionString"
     expectedTeamID="S272Y5R93J"
     ;;
cleartouchcollage)
    name="Collage"
    type="pkgInZip"
    packageID="com.cvte.cleartouch.mac"
    downloadURL=$(curl -fs https://www.getcleartouch.com/download/collage-for-mac/ | xmllint --html --xpath 'string(//*[@id="wpdm-filelist-412"]/tbody/tr[1]/td[2]/a/@href)' - 2> /dev/null | sed 's/ /%20/g')
    expectedTeamID="P76M9BE8DQ"
    ;;

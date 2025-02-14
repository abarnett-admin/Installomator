
popsql)
     name="PopSQL"
     type="dmg"
     appNewVersion=$(curl -s 'https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml' | grep version: | cut -d' ' -f2)
     curlOptions=( -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Safari/605.1.15" )
     if [[ $(arch) == "arm64" ]]; then
     	downloadURL="https://get.popsql.com/download/dmg_arm64"
    elif [[ $(arch) == "i386" ]]; then
     	downloadURL="https://get.popsql.com/download/dmg"
    fi
     expectedTeamID="4TFVQY839W"
     ;;
portingkit)
    name="Porting Kit"
    type="dmg"
    downloadURL="https://www.portingkit.com/pub/portingkit/download_latest.php?format=dmg"
    appNewVersion=""
    expectedTeamID="45WEPZ3433"
     ;;
postgresapp)
	#  A full-featured PostgreSQL installation for macOS that includes PostGIS, a user-friendly interface, a convenient menu bar item, and automatic updates
    name="Postgres"
    type="dmg"
    downloadURL=$(downloadURLFromGit PostgresApp PostgresApp)
    appNewVersion=$(versionFromGit PostgresApp PostgresApp)
    archiveName="Postgres-$appNewVersion.dmg"
    expectedTeamID="ZF84SJ5A3G"
    ;;

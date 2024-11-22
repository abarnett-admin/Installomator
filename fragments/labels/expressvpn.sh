    expressvpn)
    name="ExpressVPN"
    type="pkg"
    packageID="com.expressvpn.ExpressVPN"
    versionKey="CFBundleShortVersionString"
    downloadURL="https://www.expressvpn.com/clients/latest/mac"
    appNewVersion="$(curl -fsIL https://www.expressvpn.com/clients/latest/mac | grep -i ^location | sed -n 's/^.*mac_\([0-9.]*\)_release.*$/\1/p')"
    expectedTeamID="TC292Y5427"
    ;;

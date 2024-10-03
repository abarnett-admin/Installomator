yubicoauthenticator)
    name="Yubico Authenticator"
    type="dmg"
    downloadURL="https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-mac.dmg"
    appNewVersion=$(curl -fsIL "${downloadURL}" | grep -i "^location" | grep -Eo "[1-9][0-9\.]*" )
    expectedTeamID="LQA3CS5MM7"
    versionKey="CFBundleShortVersionString"
    ;;
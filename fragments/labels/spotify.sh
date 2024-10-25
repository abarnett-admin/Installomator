spotify)
    name="Spotify"
    type="dmg"
    if [[ $(arch) == arm64 ]]; then
        downloadURL="https://download.scdn.co/SpotifyARM64.dmg"
    elif [[ $(arch) == i386 ]]; then
        downloadURL="https://download.scdn.co/Spotify.dmg"
    fi
    appNewVersion=$(curl -fs https://www.spotify.com/us/opensource/ | grep -m 1 -o '<td[^>]*>[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+[^<]*</td>' | sed 's/<[^>]*>//g' | sed -E 's/^([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*/\1/' | head -n 1)
    expectedTeamID="2FNC3A47ZF"
    ;;


pymol)
    name="PyMOL"
    type="dmg"
    downloadURL=$(curl -sL "https://pymol.org/" \
    -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15" \
    | grep -oiE 'https:[^"]*[Mm]acOS[^"]*\.dmg' \
    | head -n1)
    if [[ "$downloadURL" != http* ]]; then
    downloadURL="https://pymol.org/${downloadURL#/}"
    fi
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*PyMOL-([0-9]+(\.[0-9]+){2,3})_.*/\1/')
    expectedTeamID="26SDDJ756N"
    ;;

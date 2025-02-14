
prune)
    name="Prune"
    type="zip"
    downloadURL=$(downloadURLFromGit BIG-RAT Prune)
    appNewVersion=$(versionFromGit BIG-RAT Prune)
    expectedTeamID="PS2F6S478M"
;;
prusaslicer)
    name="PrusaSlicer"
    type="dmg"
    archiveName="PrusaSlicer-[0-9.]*+MacOS-universal-[0-9.]*.dmg"
    downloadURL="$(downloadURLFromGit prusa3d PrusaSlicer)"
    appNewVersion="$(versionFromGit prusa3d PrusaSlicer)"
    expectedTeamID="DKPB65N43Z"
    ;;

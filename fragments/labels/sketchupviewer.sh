sketchupviewer)
    name="SketchUpViewer"
    type="dmg"
    versionKey="CFBundleVersion"
    downloadURL="$(curl -Lfs https://www.sketchup.com/en/sketchup-viewer/downloads | grep -o 'https://download.sketchup.com/SketchUpViewer[0-9\-]*.dmg')"
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*SketchUpViewer-20([0-9]+)-([0-9]+)-([0-9]+)-([0-9]+).dmg/\1.\2.\3/')
    expectedTeamID="J8PVMCY7KL"
    ;;
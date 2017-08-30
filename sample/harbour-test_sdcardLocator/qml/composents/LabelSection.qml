import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
    property bool alignRight: true

    color: Theme.secondaryHighlightColor
    font.pixelSize: Theme.fontSizeLarge
    anchors.left: alignRight === false ? parent.left : undefined
    anchors.right: alignRight ? parent.right : undefined
    anchors.margins: Theme.paddingLarge

}

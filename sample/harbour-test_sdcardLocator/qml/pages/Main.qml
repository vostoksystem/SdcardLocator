import QtQuick 2.0
import Sailfish.Silica 1.0
import"../composents"


Page {
    id: page

    width: parent.width

    SilicaFlickable {
        width: parent.width
        height: parent.height
        contentHeight: c.height
        anchors.fill: parent

        VerticalScrollDecorator {}

        Column {
            width: parent.width - Theme.paddingMedium - Theme.paddingMedium
            anchors.left: parent.left
            anchors.margins:Theme.paddingMedium
            spacing: Theme.paddingSmall
            id:c

            PageHeader {
                title: "Sdcard"
            }

            LabelSection {
                text: "Is sdcard present ?"
            }
            Label {
                text: SdcardLocator.present ? "Sdcard present" : "NO sdcard found"
            }

            LabelSection {
                text: "Sdcard location"
                anchors.topMargin: Theme.paddingMedium
            }
            Label {
                text: SdcardLocator.location
            }

            LabelSection {
                text: "Sdcard type"
                anchors.topMargin: Theme.paddingMedium
            }
            Label {
                text: SdcardLocator.type
            }
        }
    }
}


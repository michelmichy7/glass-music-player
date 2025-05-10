import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import QtQuick.Effects
import QtQuick.Layouts

import "Customizations"


ApplicationWindow  {

    width: 640
    height: 480
    visible: true
    title: qsTr("Music Player")
    color: 'white';
    id: windowqq

    Column {
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 100

    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#252725"
    }
    }

    Rectangle {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        height: 100
        width: parent.width
        color: "#0E0F0E"


        ColumnLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            height: parent.height
            Row {
                spacing: 10
                Button {

                }
                PlayButton {
                    Layout.alignment: Qt.AlignHCenter
                    text: "►"
                }
                Button {

                }
            }

                Slider {
                    Layout.alignment: Qt.AlignHCenter
                }
            }
    }
}



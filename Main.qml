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
    anchors.bottomMargin: 90

    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "white"
    }
    }

    Rectangle {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        height: 90
        width: parent.width
        color: "#EBEBEB"


        ColumnLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            height: parent.height
            Row {
                topPadding: 10
                spacing: 10
                Button {

                }
                PlayButton {
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



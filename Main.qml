import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls.Imagine
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

    //Main column layout
    ColumnLayout {
        anchors.fill: parent
        spacing: 0

            // Main content rectangle
        Item {
            id: contentArea
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                color: "#F1F1F1"
                anchors.fill: parent
                Layout.fillWidth: true
                Layout.fillHeight: true
            }



            Rectangle {
                id: albumCover
                width: Math.min(parent.height, parent.width) * 0.5
                height: width

                anchors.centerIn: parent
                radius: 29
                z: 1
            }

                ShaderEffectSource {
                    id: radSquare
                    sourceItem: albumCover
                    hideSource: true
                    live: true
                }

                MultiEffect {
                    source: albumCover
                    anchors.centerIn: parent

                    width: radSquare.width
                    height: radSquare.height
                    shadowEnabled: true
                    shadowColor: "black"
                    shadowBlur: 1
                    z: 0
            }

        }


            ImportMusicButton {
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: 10
                anchors.rightMargin: 10
            }

            // Bottom nav bar
        Rectangle {
            Layout.fillWidth: parent
            height: 90
            width: parent.width
            color: "#EBEBEB"


        ColumnLayout {
            anchors.fill: parent


            Row {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter

                PreviousButton {
                }
                PlayButton {
                }
                NextButton {
                }
            }

            Slider {
               Layout.alignment: Qt.AlignHCenter
           }
        }
        }
}

}

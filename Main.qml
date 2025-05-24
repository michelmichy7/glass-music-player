import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls.Imagine
import QtQuick.Effects
import QtQuick.Layouts

import CodeMg 1.0

import "Customizations"


ApplicationWindow  {

    width: 640
    height: 480
    visible: true
    title: qsTr("Music Player")
    color: 'white';
    id: windowqq

    Backend {
        id: backend
    }

    //Main column layout
    ColumnLayout {
        anchors.fill: parent
        spacing: 0

            // Main content rectangle
        Item {
            id: contentArea
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 200

            Rectangle {
                // Main Background
                color: "#F1F1F1"
                anchors.fill: parent
                Layout.fillWidth: true
                Layout.fillHeight: true
                z: 0
            }

            Rectangle {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
                color: "#141414"
                width: 200
                height: 40
                radius: 29
            }



            Rectangle {


                id: albumCover
                width: Math.min(parent.height, parent.width) * 0.5
                height: width
                color: "white"

                anchors.centerIn: parent
                radius: 29
                z: 2

                Rectangle {
                    id: overlay
                    anchors.fill: parent
                    visible: false
                    color: "gray"
                    radius: parent.radius
                    opacity: 0.5

                    BlackPaintedMusicImport {
                        anchors.centerIn: parent
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        overlay.visible = true
                    }
                    onExited: {
                        overlay.visible = false
                    }
                    onClicked: backend.importLibary()
                }
            }


            MultiEffect {
                source: albumCover
                anchors.centerIn: parent

                width: albumCover.width
                height: albumCover.height
                shadowEnabled: true
                shadowColor: "#141414"
                //shadowBlur: 1
                z: 1
                //shadowVerticalOffset: 9
                autoPaddingEnabled: true
        }

        }


            /*ImportMusicButton {
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: 10
                anchors.rightMargin: 10
            }*/

            // Bottom nav bar
        Rectangle {
            Layout.fillWidth: parent
            height: 90
            width: parent.width
            color: "#141414"
            topLeftRadius: 9
            topRightRadius:9


        ColumnLayout {
            anchors.fill: parent


            Row {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter

                PreviousButton {
                }
                PlayButton {
                    MouseArea {
                        anchors.fill: parent
                        onClicked: backend.playMusic()
                    }
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

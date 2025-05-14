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
            //Layout.bottomMargin: 80

            Rectangle {
                color: "#D9D9D9"
                anchors.fill: parent
                 Layout.fillWidth: true
                 Layout.fillHeight: true
            }

           Rectangle {
               id: albumCover
               width: Math.min(parent.height, parent.width) * 0.5
               height: width
               radius: 29
               anchors.centerIn: parent
           }
           ListView {
               left: parent.left
               bottom: parent.bottom
               height: 100
               width: 300
           }
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

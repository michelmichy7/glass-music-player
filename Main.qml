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

    //Main column layout
    ColumnLayout {
        anchors.fill: parent
        // Main content rectangle
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height - 90

            color: "white"

        }

}





            // Bottom nav bar
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

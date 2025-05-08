import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import QtQuick.Effects


ApplicationWindow  {

    width: 640
    height: 480
    visible: true
    title: qsTr("Music Player")
    color: 'white';
    id: windowqq

    Column {
        anchors.horizontalCenter: parent
        anchors.bottom: parent.bottom
        width: parent.width
        height: 100

        Grid {
            anchors.horizontalCenter: parent
            width: parent.width
            height: 100
                Rectangle {

                    color: 'blue'
                    width: parent.width
                    height: parent.height

                    Button {
                        anchors.centerIn: parent
                        id: btnMain
                        text: "►"
                    }
                }
        }
    }
}



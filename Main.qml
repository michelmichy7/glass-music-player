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

    Rectangle {
        width: 500
        height: 450
        anchors.centerIn: parent
        id: recMain
        color: 'transparent'

        MultiEffect {
                  anchors.fill: parent
                  source: parent
                  opacity: 0.8
        }

    Button {
        id: btnMain
        anchors.centerIn: parent
        text: "Click"

        MultiEffect {
                  anchors.fill: btnMain
                  source: btnMain
                  blurEnabled: true
                  blur: 1

              }
    }
}


}



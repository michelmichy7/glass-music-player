import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Effects

ApplicationWindow  {

    width: 640
    height: 480
    visible: true
    title: qsTr("Music Player")
    color: green;

    Rectangle {
    anchors.centerIn: parent
    id: qwindow



    Button {

        text: "Click";
    }
}

    MultiEffect {
    opacity: 30
    source: qwindow
    blur: 30
    }
}



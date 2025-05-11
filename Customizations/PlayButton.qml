import QtQuick 2.15
import QtQuick.Controls

Item {
    width: 34
    height: 34

    Image {
        id: playIcon
        source: "qrc:/Customizations/Icons/Pause.svg"

        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        smooth: true
    }
}

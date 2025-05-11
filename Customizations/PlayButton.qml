import QtQuick 2.15
import QtQuick.Controls

Item {
    width: 50
    height: 40

    Image {
        id: playIcon
        source: "qrc:/Customizations/Icons/Pause.svg"

        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        smooth: true
    }
}

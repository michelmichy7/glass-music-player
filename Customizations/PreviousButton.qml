import QtQuick 2.15

Item {
    width: 20
    height: 30


    Image {
        source: "qrc:/Customizations/Icons/Previous.svg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        smooth: true
        anchors.topMargin: 10
    }
}

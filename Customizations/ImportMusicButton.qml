import QtQuick 2.15

Item {
    width: 45
    height: 45

    Image {
        source: "qrc:/Customizations/Icons/Import_Music_Short.png"
        //smooth: true
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        layer.enabled: true
        MouseArea {
            anchors.fill: parent
            onClicked: ;
        }

    }
}

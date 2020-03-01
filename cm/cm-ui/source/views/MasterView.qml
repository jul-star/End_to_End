import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Client Managment")
    Text {
        id: name
//        text: qsTr("Hello Julian")
        text: masterController.ui_WelcomeMessage
        font.pixelSize: 44
        anchors.centerIn: parent
    }
}

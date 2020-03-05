import QtQuick 2.12
import QtQuick.Window 2.12
Item{
    Rectangle {
        color: "#f4c842"
        anchors.fill: parent
        Text {
            id: name
            //            text: qsTr("Hello Julian")
            text: masterController.ui_WelcomeMessage
            font.pixelSize: 30
            color: "blue"
            anchors.centerIn: parent
        }
    }
}

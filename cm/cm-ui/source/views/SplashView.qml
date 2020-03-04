import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
        width: 400
        height: 200
        color: "#f4c842"

        Text {
            id: name
//            text: qsTr("Hello Julian")
            text: masterController.ui_WelcomeMessage
            font.pixelSize: 30
            color: "blue"
            anchors.centerIn: parent
        }
}

import QtQuick 2.12
import QtQuick.Window 2.12

Item {
        Text {
            id: name
            text: qsTr("Hello Julian")
//            text: masterController.ui_WelcomeMessage
            font.pixelSize: 30
            anchors.centerIn: parent
        }
}

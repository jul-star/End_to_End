import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Scratchpad")
    color: "#ffffff"
    Column{
        id:columnWithText
        Text{
            id: text1
            text:  "Text 1"
            width: 300
            height: 20
        }
        Text{
            id: text2
            text:  "Text 2"
            width: 300
            height: 20
        }
        Text{
            id: text3
            text:  "Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3
Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3
Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3 Text 3"
        }
        Text{
            id: text4
            text:  "Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4
Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4
Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4 Text 4"
            width: 300
        }
        Text{
            id: text5
            text:  "Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5
Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5
Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5 Text 5"
            width: 300
            wrapMode: Text.Wrap
        }
    }
    // Zero sizing paradox Chicken & Egg!
    Column{
        id: columnWithRectangle
        Rectangle{
            id: rectangle
            visible: true
            anchors.fill: parent
            color: "blue"
        }
    }
    Component.onCompleted: {
        console.log("Text1 - implicit(Width,Height): " + text1.implicitWidth + ", "+ text1.implicitHeight + " ("+ text1.width+", "+text1.height+")"+ "\n"+
                    "Text2 - implicit(Width,Height): " + text2. implicitWidth + ", "+ text2.implicitHeight + " ("+ text2.width+", "+text2.height+")"+ "\n"+
                    "Text3 - implicit(Width,Height): " + text3. implicitWidth + ", "+ text3.implicitHeight + " ("+ text3.width+", "+text3.height+")"+ "\n"+
                    "Text4 - implicit(Width,Height): " + text4. implicitWidth + ", "+ text4.implicitHeight + " ("+ text4.width+", "+text4.height+")"+ "\n"+
                    "Text5 - implicit(Width,Height): " + text5. implicitWidth + ", "+ text5.implicitHeight + " ("+ text5.width+", "+text5.height+")" + "\n"+"\n"+
                    "ColumnWithRectangle: implicit(Width,Height): "+ columnWithRectangle. implicitWidth + ", " + columnWithRectangle.implicitHeight+" ("+ columnWithRectangle.width+", "+columnWithRectangle.height+")"+"\n"+
                    "Rectangle: implicit(Width,Height): "+ rectangle. implicitWidth + ", " + rectangle.implicitHeight+" ("+ rectangle.width+", "+rectangle.height+")")
    }
}

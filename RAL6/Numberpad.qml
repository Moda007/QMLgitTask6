import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    width: 300
    height: 400

    Grid {
        id: grid
        spacing: 5
        rows: 4
        columns: 3
        anchors.fill: parent

        NumberpadButton {
            id: btn1
            number: qsTr("1")
        }
        NumberpadButton {
            id: btn2
            number: qsTr("2")
        }
        NumberpadButton {
            id: btn3
            number: qsTr("3")
        }
        NumberpadButton {
            id: btn4
            number: qsTr("4")
        }
        NumberpadButton {
            id: btn5
            number: qsTr("5")
        }
        NumberpadButton {
            id: btn6
            number: qsTr("6")
        }
        NumberpadButton {
            id: btn7
            number: qsTr("7")
        }
        NumberpadButton {
            id: btn8
            number: qsTr("8")
        }
        NumberpadButton {
            id: btn9
            number: qsTr("9")
        }
        NumberpadButton {
            id: btn0
            number: qsTr("0")
        }
        NumberpadButton {
            id: btnEnter
            number: qsTr("E")
        }
        NumberpadButton {
            id: btnClear
            number: qsTr("C")
        }

    }

}

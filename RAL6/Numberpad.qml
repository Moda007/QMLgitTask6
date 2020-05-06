import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    width: 300
    height: 400

    signal buttonPressed(int id)
    signal enterPressed()
    signal clearPressed()

    Grid {
        id: grid
        spacing: 5
        rows: 4
        columns: 3
        anchors.fill: parent

        NumberpadButton {
            id: btn1
            number: qsTr("1")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn2
            number: qsTr("2")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn3
            number: qsTr("3")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn4
            number: qsTr("4")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn5
            number: qsTr("5")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn6
            number: qsTr("6")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn7
            number: qsTr("7")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn8
            number: qsTr("8")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn9
            number: qsTr("9")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btn0
            number: qsTr("0")
            onClickSignal: buttonPressed(parseInt(number))
        }
        NumberpadButton {
            id: btnEnter
            number: qsTr("E")
            onClickSignal: enterPressed()
        }
        NumberpadButton {
            id: btnClear
            number: qsTr("C")
            onClickSignal: clearPressed()
        }

    }

}

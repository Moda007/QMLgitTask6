import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 600
    height: 400
    title: qsTr("Lock")

    Row{
        Numberpad {
            id: numberpad
            onButtonPressed: {
                dashboard.numberInput(id);
            }
            onClearPressed: {
                dashboard.startUnlocking();
            }
            onEnterPressed: {
                dashboard.startProgramming();
            }
        }

        LockDashboard{
            id: dashboard
        }

    }
}

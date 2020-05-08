import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3

Item {
    width: 300
    height: 400

    QtObject {
        id: priv
        property variant passcode: [1,2,3,4]
        property int inputIndex: -1 //no number was entered
        property bool unlocked: false
        property bool programming: false
        property variant newPasscode: [1,2,3,4]

        onUnlockedChanged: {
            programming = false;
        }

        function unlock(){
            unlocked = true;
        }
    }


    function startProgramming(){
        if (priv.unlocked){
            console.log("Success")
            priv.inputIndex = 0
            priv.programming = true
        }
    }

    function startUnlocking(){
        priv.inputIndex = 0
        priv.unlocked = false
    }

    function lock(){
        priv.inputIndex = -1
        priv.unlocked = false
    }

    function numberInput(number){
        if(priv.inputIndex < 0) {
            return false
        }
        else {
            if(priv.programming){
                priv.newPasscode[priv.inputIndex] = number;

                if(priv.inputIndex ==3) {
                    for(var i=0; i<4; i++){
                        priv.passcode[i]=priv.newPasscode[i];
                    }
                    //Printing My New PassCode
                    console.log("My New PassCode is:")
                    for(var k=0; k<4; k++){
                        console.log(priv.passcode[k])
                    }
                    lock();
                }
                else{
                    priv.inputIndex++
                }

            }else{
                if (number !== priv.passcode[priv.inputIndex]) {
                    lock()
                    return false
                }
                else {
                    if(priv.inputIndex ==3) {
                        priv.unlock();
                    }
                    else{
                        priv.inputIndex++
                    }
                }
             }

            }
    }

//            if(priv.programming) {
//                priv.newPasscode[priv.inputIndex] = number;
//            }
//            else {

//                if (number !== priv.passcode[priv.inputIndex]) {
//                    lock()
//                    return false
//                }
//                else {
//                    if(priv.inputIndex ==3) {
//                        priv.unlock();
//                    }
//                    else{
//                        priv.inputIndex++
//                    }
//                }
//             }


//        }}

//        if(priv.programming) {
//            priv.newPasscode[priv.inputIndex] = number;
//        }
//        else {
//            if (number !== priv.passcode[priv.inputIndex]) {
//                lock()
//                return false
//            }
//            //else {
//                if(priv.inputIndex == 3) {
//                    //priv.unlock()
//                    if (priv.programming) {
//                        console.log("In 2nd Programming")
//                        for(var i=0; i<4; i++) {
//                            priv.passcode[i] = priv.newPasscode[i];
//                        }
//                        lock();
//                    }
//                    else {
//                        priv.unlock();
//                    }
//                }
//                else {
//                    priv.inputIndex++
//                }
//            }
//        }
//   // }
////}


    Rectangle{
        anchors.fill: parent
        ColumnLayout {
            id: columnLayout
            anchors.fill: parent

            StatusIndicator {
                id: lockedIndicator
                anchors.horizontalCenter: parent.horizontalCenter
                active: !priv.unlocked
            }

            StatusIndicator {
                id: unlockkingIndicator
                color: "#ffe300"
                anchors.horizontalCenter: parent.horizontalCenter
                active: (!priv.unlocked && priv.inputIndex >= 0)
            }

            StatusIndicator {
                id: unlockedIndicator
                color: "#42d617"
                anchors.horizontalCenter: parent.horizontalCenter
                active: priv.unlocked
            }

            StatusIndicator {
                id: programmingIndicator
                color: "#201a9c"
                anchors.horizontalCenter: parent.horizontalCenter
                active: priv.programming
            }


        }
    }

}

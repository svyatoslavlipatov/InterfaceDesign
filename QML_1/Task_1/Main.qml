import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 500
    height: 500
//    title: "Hello World"

    Rectangle {
        width: 500
        height: 450

        Body {
            id: body
            anchors.centerIn: parent
        }

        Head {
            id: head
            anchors.bottom: body.top
            anchors.horizontalCenter: body.horizontalCenter
        }

        Arm {
            id: leftArm
            anchors.right: body.left
            anchors.verticalCenter: body.verticalCenter
        }

        Arm {
            id: rightArm
            anchors.left: body.right
            anchors.verticalCenter: body.verticalCenter
        }

        Leg {
            id: leftLeg
            anchors.top: body.bottom
            anchors.right: body.horizontalCenter
        }

        Leg {
            id: rightLeg
            anchors.top: body.bottom
            anchors.left: body.horizontalCenter
        }
    }
}

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    visible: true
    width: 250
    height: 300
    title: "Светофор"

    Rectangle {
        width: 250
        height: 300
        anchors.centerIn: parent
        color: "lightgray"

        Column {
            spacing: 10
            anchors.centerIn: parent

            Rectangle {
                id: rect_red
                width: 75
                height: 75
                color: "red"
                border.color: "black"
                border.width: 2
                anchors.horizontalCenter: parent.horizontalCenter

                Behavior on color {
                    ColorAnimation {
                        duration: 500
                    }
                }
            }

            Rectangle {
                id: rect_yellow
                width: 75
                height: 75
                color: "yellow"
                border.color: "black"
                border.width: 2
                anchors.horizontalCenter: parent.horizontalCenter

                Behavior on color {
                    ColorAnimation {
                        duration: 500
                    }
                }
            }

            Rectangle {
                id: rect_green
                width: 75
                height: 75
                color: "green"
                border.color: "black"
                border.width: 2
                anchors.horizontalCenter: parent.horizontalCenter

                Behavior on color {
                    ColorAnimation {
                        duration: 500
                    }
                }
            }
        }

        states: [
            State {
                name: "stop"
                PropertyChanges { target: rect_red; color: "red" }
                PropertyChanges { target: rect_yellow; color: "gray" }
                PropertyChanges { target: rect_green; color: "gray" }
            },
            State {
                name: "caution"
                PropertyChanges { target: rect_red; color: "gray" }
                PropertyChanges { target: rect_yellow; color: "yellow" }
                PropertyChanges { target: rect_green; color: "gray" }
            },
            State {
                name: "go"
                PropertyChanges { target: rect_red; color: "gray" }
                PropertyChanges { target: rect_yellow; color: "gray" }
                PropertyChanges { target: rect_green; color: "green" }
            }
        ]

        transitions: [
            Transition {
                from: "stop"
                to: "caution"
            },
            Transition {
                from: "caution"
                to: "go"
            },
            Transition {
                from: "go"
                to: "stop"
            }
        ]

        state: "stop"

        MouseArea {
            anchors.fill: parent

            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }
    }
}

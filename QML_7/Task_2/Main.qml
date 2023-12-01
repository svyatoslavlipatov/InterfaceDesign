import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 500
    height: 700
    title: "Task_for_login_page_2"
    font.weight: 700

    Column{
        anchors.centerIn: parent
        spacing: 15
        Text {
            text: "Enter your password:"
            font.pixelSize: 16
        }
        Rectangle {
            Text{
                id: passwordField
                color: "white"
                font.pointSize: 1
                opacity:0
            }
            width: parent.width
            height: 45

            Row {
                spacing: 6
                anchors.centerIn: parent
                Repeater {
                    model:6

                    Label {
                        width: 15
                        height: 15
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignCenter
                        color:index <passwordField.text.length ? "black" : "light grey"
                    }
                }
            }
        }
        GridLayout {
            id: keypad
            rows: 4
            columns: 3
            x: -80
            width: parent.width
            Button {
                text: "1"
                onClicked: passwordField.text += "1"
            }
            Button {
                text: "2"
                onClicked: passwordField.text+= "2"
            }
            Button {
                text: "3"
                onClicked: passwordField.text+= "3"
            }
            Button {
                text: "4"
                onClicked: passwordField.text+= "4"
            }
            Button {
                text: "5"
                onClicked: passwordField.text+= "5"
            }
            Button {
                text: "6"
                onClicked: passwordField.text+= "6"
            }
            Button {
                text: "7"
                onClicked: passwordField.text+= "7"
            }
            Button {
                text: "8"
                onClicked: passwordField.text+= "8"
            }
            Button {
                text: "9"
                onClicked: passwordField.text+= "9"
            }
            Button {
                text: ""
                onClicked: passwordField.text+= ""
            }
            Button {
                text: "0"
                onClicked: passwordField.text+= "0"
            }
            Button {
                text: "Clear"
                onClicked: passwordField.text= ""
            }
        }
        Button {
            text: "Log In"
            onClicked: {
                console.log("Tap!")
                onClicked: passwordField.text= ""
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }

    }
}

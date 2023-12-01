import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 350
    height: 500
    title: "Task_for_Login_Page"

    Rectangle {
        width: parent.width
        height: parent.height

        ColumnLayout {
            anchors.centerIn: parent

            TextField {
                id: usernameField
                placeholderText: "Username"
                width: 205
                height: 30
                font.pixelSize: 16
            }

            TextField {
                id: passwordField
                placeholderText: "Password"
                width: 205
                height: 30
                font.pixelSize: 16
                echoMode: TextInput.Password
            }

            RowLayout {
                Button {
                    text: "Log In"
                    font.pixelSize: 14
                    onClicked: {
                        console.log("Username:", usernameInput.text);
                        console.log("Password:", passwordInput.text);
                    }
                }

                Button {
                    text: "Clear"
                    font.pixelSize: 14
                    onClicked: {
                        usernameInput.text = "";
                        passwordInput.text = "";
                    }
                }
            }
        }
    }
}

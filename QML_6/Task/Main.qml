import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    property int defMargin: 10

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page_red
    }

    My_Page {
        id: page_red
        backgroundColor: "red"
        buttonText: "To_Green"
        onButtonClicked: {
            stack_view.push(page_green)
        }
        Text {
                anchors.centerIn: parent
                text: "Page Red"
                font.pixelSize: 24
                font.weight: Font.Bold
            }

        Button {
            anchors.bottom: parent.bottom
            anchors.margins: defMargin
            text: "To_Yellow"
            onClicked: {
                stack_view.push(page_yellow)
            }
        }
    }

    My_Page {
        id: page_green
        visible: false
        backgroundColor: "green"
        buttonText: "To_Yellow"
        Text {
                anchors.centerIn: parent
                text: "Page Green"
                font.pixelSize: 24
                font.weight: Font.Bold
            }

        onButtonClicked: {
            stack_view.push(page_yellow)
        }

        Button {
            anchors.bottom: parent.bottom
            anchors.margins: defMargin
            text: "To_Red"
            onClicked: {
                stack_view.pop(page_red)
            }
        }
    }

    My_Page {
        id: page_yellow
        visible: false
        backgroundColor: "yellow"
        buttonText: "To_Red"
        onButtonClicked: {
            stack_view.pop(page_red)
        }
        Text {
                anchors.centerIn: parent
                text: "Page Yellow"
                font.pixelSize: 24
                font.weight: Font.Bold
            }

        Button {
            anchors.bottom: parent.bottom
            anchors.margins: defMargin
            text: "To_Green"
            onClicked: {
                stack_view.pop(page_green)
            }
        }
    }
}

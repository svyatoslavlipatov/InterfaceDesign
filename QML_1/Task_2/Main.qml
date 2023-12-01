import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 315
    height: 550
    title: "Task_for_Layout"

    Rectangle {
        id: mainPage
        width: parent.width
        height: parent.height

        Rectangle {
            id: header
            color: "#dcdcdc"
            width: parent.width
            height: 50
            Text {
                anchors.centerIn: parent
                text: "Header"
                font.weight: Font.Bold
            }
        }

        Rectangle {
            id: content
            color: "#d3d3d3d6"
            width: parent.width
            height: parent.height - header.height - 3 * footer.height - 20
            border.color: "black"
            border.width: 1
            anchors.top: header.bottom
            anchors.bottom: footer.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 10
            Text {
                anchors.centerIn: parent
                text: "Content"
                font.weight: Font.Bold
            }
        }

        Row {
            id: footer
            width: parent.width
            height: 50
            anchors.bottom: parent.bottom
            spacing: 5

            Rectangle {
                id: firstRect
                color: "#d3d3d3"
                width: parent.width / 3
                height: parent.height
                Text {
                    anchors.centerIn: parent
                    text: "1"
                    font.weight: Font.Bold
                }
            }

            Rectangle {
                id: secondRect
                color: "#d3d3d3"
                width: parent.width / 3
                height: parent.height              
                Text {
                    anchors.centerIn: parent
                    text: "2"
                    font.weight: Font.Bold
                }
            }

            Rectangle {
                id: thirdRect
                color: "#d3d3d3"
                width: parent.width / 3
                height: parent.height
                Text {
                    anchors.centerIn: parent
                    text: "3"
                    font.weight: Font.Bold
                }
            }
        }
    }
}

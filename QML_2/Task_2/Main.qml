import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    visible: true
    width: 315
    height: 550
    title: "Task_for_Layout"

    Rectangle {
        id: mainPage
        width: parent.width
        height: parent.height

        ColumnLayout {
            id: mainLayout
            anchors.fill: parent

            Rectangle {
                id: header
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "#dcdcdc"
                Text {
                    anchors.centerIn: parent
                    text: "Header"
                    font.weight: Font.Bold
                }
            }

            Rectangle {
                id: content
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: parent.height - header.height - 3 * footer.height - 20
                color: "#d3d3d3d6"
                border.color: "black"
                border.width: 1
                Text {
                    anchors.centerIn: parent
                    text: "Content"
                    font.weight: Font.Bold
                }
            }

            RowLayout {
                id: footer
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                spacing: 5

                Rectangle {
                    id: firstRect
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "#d3d3d3"
                    Text {
                        anchors.centerIn: parent
                        text: "1"
                        font.weight: Font.Bold
                    }
                }

                Rectangle {
                    id: secondRect
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "#d3d3d3"
                    Text {
                        anchors.centerIn: parent
                        text: "2"
                        font.weight: Font.Bold
                    }
                }

                Rectangle {
                    id: thirdRect
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "#d3d3d3"
                    Text {
                        anchors.centerIn: parent
                        text: "3"
                        font.weight: Font.Bold
                    }
                }
            }
        }
    }
}

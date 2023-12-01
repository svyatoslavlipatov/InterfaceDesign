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
    property string contentText: "Content"
    property string headerText: "Header"
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
                    text: headerText
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
                anchors.top: header.bottom
                anchors.bottom: footer.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 5

                Text {
                    anchors.centerIn: parent
                    text: contentText
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
                    color: Qt.rgba(150/255, 150/255, 150/255)
                    Text {
                        anchors.centerIn: parent
                        text: "Item 1"
                        font.weight: Font.Bold
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            firstRect.color = Qt.rgba(145/255, 165/255, 145/255);
                            secondRect.color = Qt.rgba(150/255, 150/255, 150/255, 0.5);
                            thirdRect.color = Qt.rgba(150/255, 150/255, 150/255, 0.5);
                            headerText = "Header 1";
                            contentText = "Content Item 1";
                        }
                    }
                }

                Rectangle {
                    id: secondRect
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: Qt.rgba(150/255, 150/255, 150/255)
                    Text {
                        anchors.centerIn: parent
                        text: "Item 2"
                        font.weight: Font.Bold
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            firstRect.color = Qt.rgba(150/255, 150/255, 150/255, 0.5);
                            secondRect.color =  Qt.rgba(145/255, 165/255, 145/255);
                            thirdRect.color = Qt.rgba(150/255, 150/255, 150/255, 0.5);
                            contentText = "Content Item 2";
                            headerText = "Header 2";
                        }
                    }
                }

                Rectangle {
                    id: thirdRect
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: Qt.rgba(150/255, 150/255, 150/255)
                    Text {
                        anchors.centerIn: parent
                        text: "Item 3"
                        font.weight: Font.Bold
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            firstRect.color =  Qt.rgba(150/255, 150/255, 150/255, 0.5);
                            secondRect.color = Qt.rgba(150/255, 150/255, 150/255, 0.5);
                            thirdRect.color = Qt.rgba(145/255, 165/255, 145/255);
                            contentText = "Content Item 3";
                            headerText = "Header 3";
                        }
                    }
                }
            }
        }
    }
}

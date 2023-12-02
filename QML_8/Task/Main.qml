import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 500
    height: 800
    title: "Прокручиваемый светофор"

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: indicator.currentIndex

        Page {
            Rectangle {
                id: page_red
                color: "red"
                width: view.width
                height: view.height
                Text {
                    anchors.centerIn: parent
                    text: "Red Page"
                    font.pixelSize: 24
                    font.weight: 700
                }
            }
        }

        Page {
            Rectangle {
                id: page_yellow
                color: "yellow"
                width: view.width
                height: view.height
                Text {
                    anchors.centerIn: parent
                    text: "Yellow Page"
                    font.pixelSize: 24
                    font.weight: 700
                }
            }
        }

        Page {
            Rectangle {
                id: page_green
                color: "green"
                width: view.width
                height: view.height
                Text {
                    anchors.centerIn: parent
                    text: "Green Page"
                    font.weight: 700
                    font.pixelSize: 32
                }
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

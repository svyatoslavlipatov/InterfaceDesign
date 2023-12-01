import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 2.15

Item {
    id: deleg
    property string name: "?"
    property string surname: "?"
    property string phoneNumber: "?"
    property string time: "?" // Добавлено время отправки

    Rectangle {
        id: rect
        border.color: "darkgrey"
        radius: 5
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0; color: "lightgray" }
            GradientStop { position: 1; color: "white" }
        }
    }

    RowLayout {
        id: rowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height
        anchors.margins: 10
        spacing: 5

        Text { text: name; Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter }
        Item { Layout.fillWidth: true }
        Text { text: time; Layout.alignment: Qt.AlignRight | Qt.AlignVCenter }
    }
}

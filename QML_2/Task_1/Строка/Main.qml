import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    width: 200
    height: 125
    visible: true
    title: qsTr("RowLayout")
    property int myMargin: 10
    minimumWidth: rl.implicitWidth + 2 * myMargin
    RowLayout {
        id: rl
        spacing: myMargin
        anchors.fill: parent
        Comp {
            Layout.alignment: Qt.AlignLeft
        }
        Comp {
            Layout.alignment: Qt.AlignHCenter
        }
        Comp {
            Layout.alignment: Qt.AlignRight
        }
        Item {
            Layout.fillHeight: true
        }
    }
}

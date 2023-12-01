import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    width: 300
    height: 350
    visible: true
    title: qsTr("ColumnLayout")
    property int myMargin: 10
    minimumHeight: cl.implicitHeight + 2 * myMargin
    ColumnLayout {
        id: cl
        spacing: myMargin
        anchors.fill: parent
        Comp {
            Layout.alignment: Qt.AlignHCenter
        }
        Comp {
            Layout.alignment: Qt.AlignHCenter
        }
        Comp {
            Layout.alignment: Qt.AlignHCenter
        }
        Item {
            Layout.fillHeight: true
        }
    }
}

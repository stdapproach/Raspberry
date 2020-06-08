import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")

    Button {
        text: "QQQ"
        onPressed: {
            console.log("QQQ_Pressed")
            popup.open();
        }
    }

    Popup {
        id: popup
        x: 100
        y: 100
        width: 200
        height: 300
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        padding: 10

        contentItem: Text {
            text: "Content of popup.\nPres Esc to close"
        }
    }
}

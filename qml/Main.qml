// import QtQuick

// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Hello World")
// }
import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 400
    height: 300
    visible: true
    title: "My Qt App"

    Text {
        anchors.centerIn: parent
        text: "Hello Qt!"
        font.pixelSize: 24
    }
}

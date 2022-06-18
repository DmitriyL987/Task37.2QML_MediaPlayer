import QtQuick
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MediaPlayer")
    color: "#000000"
    Rectangle {
        id: display
        width: parent.width
        height: (parent.height - 120)

        color: "#4351b7"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalTop
        Text {
            id: status
            font.pointSize: (parent.height * 0.25)
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "STOP"
            styleColor: "#eacbcb"
            visible: false
        }
    }

    Button {
        id: button_play
        font.pointSize: 30

        width: 64
        height: 64
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 36
            horizontalCenterOffset: 0
        }
        text: "▶️"
        onClicked: {
            status.text = "PLAY"
            status.visible = true
            progressProcess.value += 0.01
        }
    }

    Button {
        id: button_pause
        font.pointSize: 30
        width: 64
        height: 64
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 36
            horizontalCenterOffset: -70
        }
        text: "⏸️"

        onClicked: {
            status.text = "PAUSE"
            status.visible = true
        }
    }

    Button {
        id: button_stop
        font.pointSize: 30
        width: 64
        height: 64
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 36
            horizontalCenterOffset: 70
        }
        text: "⏹"
        onClicked: {
            status.text = "STOP"
            status.visible = true
            progressProcess.value = 0
        }
    }

    Button {
        id: button_forward
        font.pointSize: 30
        width: 64
        height: 64
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 36
            horizontalCenterOffset: 140
        }
        text: "⏩️"
        onClicked: {
            status.text = "FORWARD"
            status.visible = true
            progressProcess.value += 0.10
        }
    }

    Button {
        id: button_rewind
        font.pointSize: 30
        width: 64
        height: 64
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 36
            horizontalCenterOffset: -140
        }
        text: "⏪️"
        onClicked: {
            status.text = "REWIND"
            status.visible = true
            progressProcess.value -= 0.10
        }
    }

    ProgressBar {
        id: progressProcess
        height: 14
        width: (parent.width * 0.9)
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 8
            horizontalCenterOffset: 0
        }
        from: 0
        to: 1
        value: 0.0
    }
}

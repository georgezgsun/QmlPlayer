import QtQuick 2.9
import QtQuick.Window 2.2
import QtMultimedia 5.12

Window
{
    visible: true
    width: 1065
    height: 615
    title: qsTr("My QML Player")

    Grid
    {
        columns: 1
        rows: 5
        spacing: 10
        anchors
        {
            top: parent.top
            right: parent.right
        }

        Rectangle
        {
            width: 94
            height:94
            color: "blue"
        }

        Rectangle
        {
            width: 94
            height:94
            color: "darkgreen"
        }

        Rectangle
        {
            width: 94
            height:94
            color: "darkgreen"
        }

        Rectangle
        {
            width: 94
            height:94
            color: "green"
        }

        Rectangle
        {
            width: 94
            height:94
            color: "darkgreen"
        }

        Rectangle
        {
            width: 94
            height:94
            color: "darkblue"
        }

    }

    Grid
    {
        columns: 2
        rows: 2
        spacing: 8

        Video
        {
            id: video0
            width: 480
            height: 270

            source: "file:///home/george/Videos/GOPR0137.MP4"
            autoPlay: true
            fillMode: VideoOutput.Stretch

            MouseArea
            {
                anchors.fill: parent
                onClicked: video0.playbackState == MediaPlayer.PlayingState ? video0.pause() : video0.play()
            }

            focus: true
            Keys.onSpacePressed: video0.playbackState == MediaPlayer.PlayingState ? video0.pause() : video0.play()
            Keys.onLeftPressed: video0.seek(video0.position - 5000)
            Keys.onRightPressed: video0.seek(video0.position + 5000)
        }

        Video
        {
            id: video1
            width: 480
            height: 270

            source: "file:///home/george/Videos/GOPR0183.MP4"
            autoPlay: true
            fillMode: VideoOutput.Stretch

            MouseArea
            {
                anchors.fill: parent
                onClicked: video1.playbackState == MediaPlayer.PlayingState ? video1.pause() : video1.play()
            }

            focus: true
            Keys.onSpacePressed: video1.playbackState == MediaPlayer.PlayingState ? video1.pause() : video1.play()
            Keys.onLeftPressed: video1.seek(video1.position - 5000)
            Keys.onRightPressed: video1.seek(video1.position + 5000)
        }

        Video
        {
            id: video2
            width: 480
            height: 270

            source: "file:///home/george/Videos/GOPR0160.MP4"
            autoPlay: true
            fillMode: VideoOutput.Stretch
        }

        Video
        {
            id: video3
            width: 480
            height: 270

            source: "file:///home/george/Videos/GOPR0152.MP4"
            autoPlay: true
            fillMode: VideoOutput.Stretch
        }
    }
}

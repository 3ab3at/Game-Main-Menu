import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick 2.7
import QtQuick.Controls 2.3
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Main Menu")
    Column{
    anchors.centerIn: parent

        Button {

            width: 100
            id: play
            text: "Play"
            leftPadding: 12
            contentItem: Label {
                id: txt
                text: play.text
                font.pointSize: 16;
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                NumberAnimation { id: in1; target: txt; property: "x"; to: 27 }
                NumberAnimation { id: in2; target: txt; property: "x"; to: 32 }
                NumberAnimation { id: out; target: txt; property: "x"; to: 12 }
            }

            background:Rectangle {
                id: back
                color: "red"
                width: 10
            }
            hoverEnabled: true
            onHoveredChanged:{
                if (!play.hovered)
                {
                    play.state = "normal"
                    out.start();
                }
                else
                {
                    play.state = "hovered"
                    in1.start();
                }

            }
            onPressed:{
                play.state = "clicked"
                in2.start();
            }
            onReleased:{
                play.state = "hovered"
                in1.start();
            }


            states: [

                State {
                    name: "normal"
                    PropertyChanges {
                        target: play;
                        background.width: 10
                        background.color: "red"
                    }

                },

                State {
                    name: "hovered"
                    PropertyChanges {
                        target: play;
                        background.width: 25
                    }

                },

                State {
                    name: "clicked"
                    PropertyChanges {
                        target: play;

                        background.width: 30
                        background.color: "green"
                    }

                }]

            transitions:[
                Transition {
                    PropertyAnimation {
                        target: back;
                        property: "width";
                        duration: 250
                    }
                }
            ]
        }

        Button {

            width: 100
            id: settings
            text: "Settings"
            leftPadding: 12
            contentItem: Label {
                id: txt2
                text: settings.text
                font.pointSize: 16;
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                NumberAnimation { id: in11; target: txt2; property: "x"; to: 27 }
                NumberAnimation { id: in22; target: txt2; property: "x"; to: 32 }
                NumberAnimation { id: out2; target: txt2; property: "x"; to: 12 }
            }

            background:Rectangle {
                id: back2
                color: "red"
                width: 10
            }
            hoverEnabled: true
            onHoveredChanged:{
                if (!settings.hovered)
                {
                    settings.state = "normal"
                    out2.start();
                }
                else
                {
                    settings.state = "hovered"
                    in11.start();
                }

            }
            onPressed:{
                settings.state = "clicked"
                in22.start();
            }
            onReleased:{
                settings.state = "hovered"
                in11.start();
            }


            states: [

                State {
                    name: "normal"
                    PropertyChanges {
                        target: settings;
                        background.width: 10
                        background.color: "red"
                    }

                },

                State {
                    name: "hovered"
                    PropertyChanges {
                        target: settings;
                        background.width: 25
                    }

                },

                State {
                    name: "clicked"
                    PropertyChanges {
                        target: settings;

                        background.width: 30
                        background.color: "green"
                    }

                }]

            transitions:[
                Transition {
                    PropertyAnimation {
                        target: back2;
                        property: "width";
                        duration: 250
                    }
                }
            ]
        }


        Button {

            width: 100
            id: quit
            text: "Quit"
            leftPadding: 12
            contentItem: Label {
                id: txt3
                text: quit.text
                font.pointSize: 16;
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                NumberAnimation { id: in111; target: txt3; property: "x"; to: 27 }
                NumberAnimation { id: in222; target: txt3; property: "x"; to: 32 }
                NumberAnimation { id: out3; target: txt3; property: "x"; to: 12 }
            }

            background:Rectangle {
                id: back3
                color: "red"
                width: 10
            }
            hoverEnabled: true
            onHoveredChanged:{
                if (!quit.hovered)
                {
                    quit.state = "normal"
                    out3.start();
                }
                else
                {
                    quit.state = "hovered"
                    in111.start();
                }

            }
            onPressed:{
                quit.state = "clicked"
                in222.start();
            }
            onReleased:{
                quit.state = "hovered"
                in111.start();
            }


            states: [

                State {
                    name: "normal"
                    PropertyChanges {
                        target: quit;
                        background.width: 10
                        background.color: "red"
                    }

                },

                State {
                    name: "hovered"
                    PropertyChanges {
                        target: quit;
                        background.width: 25
                    }

                },

                State {
                    name: "clicked"
                    PropertyChanges {
                        target: quit;

                        background.width: 30
                        background.color: "green"
                    }

                }]

            transitions:[
                Transition {
                    PropertyAnimation {
                        target: back3;
                        property: "width";
                        duration: 250
                    }
                }
            ]
        }

    }

}

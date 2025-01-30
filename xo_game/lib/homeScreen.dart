import 'package:flutter/material.dart';
import 'package:xo_game/buttons.dart';
import 'package:xo_game/score_screen.dart';

class Homescreen extends StatelessWidget {
  static const String roureName = "home";
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "XO   Game",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          // color: Colors.amber,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ScoreScreen(
                      PlayerName: "Player 1",
                    ),
                  ),
                  Expanded(
                    child: ScoreScreen(
                      PlayerName: "Player 2",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 170,
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Buttons(label: "", onClicked: onClicked),
                      Buttons(label: "", onClicked: onClicked),
                      Buttons(label: "", onClicked: onClicked)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Buttons(label: "", onClicked: onClicked),
                      Buttons(label: "", onClicked: onClicked),
                      Buttons(label: "", onClicked: onClicked)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Buttons(label: "", onClicked: onClicked),
                      Buttons(label: "", onClicked: onClicked),
                      Buttons(label: "", onClicked: onClicked)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onClicked(label) {}
}

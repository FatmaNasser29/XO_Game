import 'package:flutter/material.dart';
import 'package:xo_game/buttons.dart';
import 'package:xo_game/player_model.dart';
import 'package:xo_game/score_screen.dart';

class Homescreen extends StatefulWidget {
  static const String roureName = "home";
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> boardGame = ['', '', '', '', '', '', '', '', ''];
  int score1 = 0;
  int score2 = 0;
  @override
  Widget build(BuildContext context) {
    PlayerModel model =
        ModalRoute.of(context)?.settings.arguments as PlayerModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "X and O   Game",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ScoreScreen(
                  PlayerName: model.name1,
                  score: "$score1",
                ),
                ScoreScreen(PlayerName: model.name2, score: "$score2"),
              ],
            ),
            SizedBox(
              height: 170,
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Buttons(
                        label: boardGame[0], index: 0, onClicked: onClicked),
                    Buttons(
                        label: boardGame[1], index: 1, onClicked: onClicked),
                    Buttons(label: boardGame[2], index: 2, onClicked: onClicked)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Buttons(
                        label: boardGame[3], index: 3, onClicked: onClicked),
                    Buttons(
                        label: boardGame[4], index: 4, onClicked: onClicked),
                    Buttons(label: boardGame[5], index: 5, onClicked: onClicked)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Buttons(
                        label: boardGame[6], index: 6, onClicked: onClicked),
                    Buttons(
                        label: boardGame[7], index: 7, onClicked: onClicked),
                    Buttons(label: boardGame[8], index: 8, onClicked: onClicked)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int counter = 0;
  onClicked(index) {
    if (boardGame[index].isNotEmpty) return;
    if (counter.isEven) {
      boardGame[index] = 'x';
      score1 += 2;
      bool isWinner = checkWinner("x");
      if (isWinner) {
        score1 += 10;
        reset();
      } else {
        counter++;
      }
    } else {
      boardGame[index] = 'o';
      score2 += 2;
      bool isWinner = checkWinner("o");
      if (isWinner) {
        score2 += 10;
        reset();
      } else {
        counter++;
      }
    }
    if (counter == 9) {
      reset();
    }

    setState(() {});
  }

  bool checkWinner(String symbol) {
    for (int i = 0; i < 3; i++) {
      if (boardGame[i] == symbol &&
          boardGame[i + 3] == symbol &&
          boardGame[i + 6] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 9; i += 3) {
      if (boardGame[i] == symbol &&
          boardGame[i + 1] == symbol &&
          boardGame[i + 2] == symbol) {
        return true;
      }
    }

    if (boardGame[0] == symbol &&
        boardGame[4] == symbol &&
        boardGame[8] == symbol) {
      return true;
    }
    if (boardGame[2] == symbol &&
        boardGame[4] == symbol &&
        boardGame[6] == symbol) {
      return true;
    } else {
      return false;
    }
  }

  reset() {
    boardGame = ['', '', '', '', '', '', '', '', ''];
    counter = 0;
  }
}

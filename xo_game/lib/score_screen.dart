import 'package:flutter/material.dart';
import 'package:xo_game/login_screen.dart';

class ScoreScreen extends StatelessWidget {
  String PlayerName;
  String score;
  ScoreScreen({required this.score, required this.PlayerName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              PlayerName,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              score,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

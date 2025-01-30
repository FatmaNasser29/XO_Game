import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  String PlayerName;
  ScoreScreen({required this.PlayerName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            PlayerName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Score:",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}

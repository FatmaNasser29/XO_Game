import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Function onClicked;
  String label;
  Buttons({required this.label, required this.onClicked, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(),
                shadowColor: Colors.green,
                backgroundColor: Colors.white70),
            onPressed: () {
              onClicked;
            },
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            )));
  }
}

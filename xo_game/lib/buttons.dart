import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Function onClicked;
  String label;
  int index;
  Buttons(
      {required this.index,
      required this.label,
      required this.onClicked,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              onClicked(index);
            },
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:xo_game/homeScreen.dart';

void main() {
  runApp(const XoGame());
}

class XoGame extends StatelessWidget {
  const XoGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        routes: {
          Homescreen.roureName: (context) => Homescreen(),
        },
        initialRoute: Homescreen.roureName);
  }
}

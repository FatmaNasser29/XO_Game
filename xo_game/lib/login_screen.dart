import 'package:flutter/material.dart';
import 'package:xo_game/homeScreen.dart';
import 'package:xo_game/player_model.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "loginScreen";
  LoginScreen({super.key});

  String name1 = '';
  String name2 = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  onChanged: (value) {
                    name1 = value;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    hintText: "Player One",
                    hintStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 5,
                      color: Colors.redAccent,
                    )),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  onChanged: (value) {
                    name2 = value;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Text(
                      "o",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    hintText: "Player Two",
                    hintStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 5,
                      color: Colors.blue,
                    )),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    PlayerModel model = PlayerModel(name1, name2);
                    Navigator.pushNamed(context, Homescreen.roureName,
                        arguments: model);
                  },
                  child: Text(
                    "Go To Play",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

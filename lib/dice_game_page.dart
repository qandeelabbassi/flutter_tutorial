import 'dart:math';
import 'package:flutter/material.dart';

class DiceGamePage extends StatefulWidget {
  @override
  DiceGameState createState() => DiceGameState();
}

class DiceGameState extends State<DiceGamePage> {
  var diceNumber1 = 1;
  var diceNumber2 = 3;

  void changeDice(){
    setState(() {
      diceNumber1 = Random().nextInt(6)+1;
      diceNumber2 = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Game'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      backgroundColor: Colors.red,
      body: Container(
          child: Center(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$diceNumber1.png'),
                onPressed: () {
                  changeDice();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$diceNumber2.png'),
                onPressed: () {
                  changeDice();
                },
              ),
            )
          ]))),
    ));
  }
}

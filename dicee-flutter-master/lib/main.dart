import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void diceChanged() {
    leftDiceNumber = 1 + Random().nextInt(6);
    rightDiceNumber = 1 + Random().nextInt(6);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  diceChanged();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  diceChanged();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

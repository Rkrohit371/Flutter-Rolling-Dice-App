import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        appBar: AppBar(
          title: Center(child: Text('Tap on Dice')),
          backgroundColor: Colors.indigo[900],
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
  int leftNum = 1;
  int rightNum = 1;

  void tapDice() {
    setState(() {
      leftNum = Random().nextInt(6) + 1;
      rightNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: tapDice,
              child: Image.asset('images/dice$leftNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: tapDice,
              child: Image.asset('images/dice$rightNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

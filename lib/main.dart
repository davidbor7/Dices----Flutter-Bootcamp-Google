import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDicee = 1;
  int rightDicee = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftDicee.png'), 
                onPressed: updateDices              
              )
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDicee.png'),
                onPressed: updateDices
              )
            )
          ],
        ),
      ),
    );
  }

  void updateDices(){
    setState(() {
      rightDicee = Random().nextInt(6) + 1;
      leftDicee = Random().nextInt(6) + 1;
    });
  }
}

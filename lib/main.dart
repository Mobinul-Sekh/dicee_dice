import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: DiceeDice(),
  ));
}

class DiceeDice extends StatefulWidget {
  @override
  _DiceeDiceState createState() => _DiceeDiceState();
}

class _DiceeDiceState extends State<DiceeDice> {
  int number=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Center(
          child: Text(
            "DiceeDice",
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: (){
              setState(() {
                number=Random().nextInt(6)+1;
              });
            },
              child: Image.asset('images/dice$number.png')),
        ),
      ),
    );
  }
}


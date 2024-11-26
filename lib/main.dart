import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(DicePlay());
}

class DicePlay extends StatefulWidget {
  const DicePlay({super.key});

  @override
  State<DicePlay> createState() => _DicePlayState();
}

class _DicePlayState extends State<DicePlay> {
  int leftDicePlay = 2;
  int rightDicePlay = 4;

  changeDiceFace() {
    setState(() {
      leftDicePlay = Random().nextInt(6) + 1;
      rightDicePlay = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('DicePlay')),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$leftDicePlay.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$rightDicePlay.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

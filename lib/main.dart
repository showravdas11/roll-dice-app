import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 34, 34, 35),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 34, 34, 35),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

// when both dice need to change
  // void changeDiceFaces() {
  //   setState(() {
  //     leftDiceNumber = Random().nextInt(6) + 1;
  //     rightDiceNumber = Random().nextInt(6) + 1;
  //   });
  // }

  // single dice change 
  void leftDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  void rightDice(){
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                leftDice();
              },
              child: Image.asset(
                "assets/images/dice-${leftDiceNumber}.png",
                width: 150,
                height: 150,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rightDice();
              },
              child: Image.asset(
                "assets/images/dice-${rightDiceNumber}.png",
                width: 150,
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

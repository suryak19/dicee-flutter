import 'package:flutter/material.dart';
import 'dart:math';

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
  // const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //#TODO - Need to check why is this not working.
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                      print(
                          'Left dice button got pressed with - $leftDiceNumber');
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: () {
                  changeDiceFace();
                  print('Right dice button got pressed with $rightDiceNumber');
                },
                    child: Image.asset('images/dice$rightDiceNumber.png')),
              )),
        ],
      ),
    );
  }

  void changeDiceFace() {
     setState(() {
      // leftDiceNumber = Random().nextInt(7);
      // if(leftDiceNumber==0)leftDiceNumber++;
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

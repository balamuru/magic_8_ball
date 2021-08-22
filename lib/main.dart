import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[700],
        ),
        body: EightBallPage(),
      ),
    ),
  );
}

class EightBallPage extends StatefulWidget {
  const EightBallPage({Key? key}) : super(key: key);

  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int ballNumber = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {

                  ballNumber = randomNum(5);
                  print("button pressed: $ballNumber");
                });
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
        ],
      ),
    );
  }

  int randomNum(int max) => Random().nextInt(max) + 1;
}

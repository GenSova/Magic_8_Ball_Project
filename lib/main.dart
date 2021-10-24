import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      home: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball_num = 0;
  int _randomInt() {
    int randomNum = Random().nextInt(5);
    print(randomNum);
    return randomNum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: FlatButton(
            child: Image.asset('images/ball$ball_num.png'),
            onPressed: () {
              setState(() {
                ball_num = _randomInt();
              });
            },
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

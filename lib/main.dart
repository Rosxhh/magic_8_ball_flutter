import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    home: BallsPage()

),
);

class BallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('As Me AnyThing'),
        centerTitle: true,
        backgroundColor:Colors.lightBlue,
      ),
      body: Balls(),
            );

  }
}

class Balls extends StatefulWidget {
  @override
  State<Balls> createState() => _BallState();
}

class _BallState extends State<Balls> {
  int ballNumber =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballNumber =Random().nextInt(5) + 1;

            print('pressed ');
          });


        },
          child: Image.asset('images/ball$ballNumber.png'),
      ),
    );

  }
}

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
      ),
      );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Center(
            child: Text('Ask Me Anything', 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 20.0, ),
              ),
          ),
          backgroundColor: Colors.blue[600],
          ),
        body: const MagicBall(),);
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();

}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  
  int changeImage(){  
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      });
      return ballNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: TextButton(onPressed: () { 
            ballNumber = changeImage();
          },
          child: Image.asset('images/ball$ballNumber.png'),
          ),
    );
  }
}

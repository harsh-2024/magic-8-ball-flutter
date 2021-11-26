import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Ball',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Ask Me Anything'),
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: TextButton(
                onPressed: () {
                  // print('I got clicked');
                  setState(() {
                    ballnumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$ballnumber.png'),
                ))));
  }
}

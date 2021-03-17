import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.indigo,
      ),
      body: ImageResponse(),
      backgroundColor: Colors.blue,
    );
  }
}

class ImageResponse extends StatefulWidget {
  @override
  _ImageResponseState createState() => _ImageResponseState();
}

class _ImageResponseState extends State<ImageResponse> {
  int image = 5;

  void answerMyQuestion() {
    setState(() {
      image = Random().nextInt(5) + 1;
      print(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: answerMyQuestion,
        child: Image.asset('images/ball$image.png'),
      ),
    );
  }
}

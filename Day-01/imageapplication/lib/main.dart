import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            child: Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2183206513,3608517470&fm=26&gp=0.jpg',
              fit: BoxFit.none,
              color: Colors.green,
              colorBlendMode: BlendMode.darken,
              repeat: ImageRepeat.repeat,
            ),
            width: 400.0,
            height: 900.0,
            color: Colors.lightBlue[100],
          ),
        ),
      ),
    );
  }
}

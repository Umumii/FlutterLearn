import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Widget'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Hello Wolrd',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 300.0,
            // color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.lightBlue, Colors.green, Colors.purple]),
                border: Border.all(width: 5.0, color: Colors.red)),
          ),
        ),
      ),
    );
  }
}

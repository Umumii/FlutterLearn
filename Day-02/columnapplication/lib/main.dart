import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Column widget'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data1'),
                Expanded(child: Text('data2222222222222222222222')),
                Text('data3'),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row widget'),
        ),
        body: Row(
          children: [
            Expanded(
                child: RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: new Text('redAccent '),
            )),
            RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              child: new Text('lightBlue'),
            ),
            Expanded(
                child: RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: new Text('orangeAccent '),
            )),
          ],
        ),
      ),
    );
  }
}

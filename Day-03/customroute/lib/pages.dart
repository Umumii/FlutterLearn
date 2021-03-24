import 'package:flutter/material.dart';
import 'custom_route.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('FirstPage',
            style: TextStyle(
              fontSize: 36.0,
            )),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).push(CustomRoute(SecondWidget()));
          },
        ),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('SecondPage',
            style: TextStyle(
              fontSize: 36.0,
            )),
        leading: Container(),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              '河南省',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('洛阳'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.lightBlue,
            ),
          ),
          ListTile(
            title: Text(
              '河南省',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('平顶山'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.purpleAccent,
            ),
          ),
          ListTile(
            title: Text(
              '河南省',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('开封'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.orangeAccent,
            ),
          )
        ],
      ),
    );
    return MaterialApp(
        title: 'Card Widget',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Card widget'),
          ),
          body: Center(
            child: card,
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  WrapWidget({Key key}) : super(key: key);

  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = List<Widget>();
    widgets.add(AddButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height / 2,
            color: Colors.grey,
            child: Wrap(
              children: widgets,
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget AddButton() {
    return GestureDetector(
      onTap: () {
        if (widgets.length < 16) {
          setState(() {
            widgets.insert(widgets.length - 1, PhotoButton());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.8,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget PhotoButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text(
            '照片',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

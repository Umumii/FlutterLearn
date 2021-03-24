import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarWidget extends StatefulWidget {
  BottomAppBarWidget({Key key}) : super(key: key);

  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  List<Widget> widgets;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    widgets = List();
    widgets.add(EachView('Home'));
    widgets.add(EachView('Email'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (builderContext) {
            return EachView('New Route');
          }));
        },
        tooltip: 'I am Add',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

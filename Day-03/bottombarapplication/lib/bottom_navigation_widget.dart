import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/pages_screen.dart';
import 'pages/airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationBarItemSelColor = Colors.lightBlue;
  int _currentIndex = 0;
  List<Widget> widgets = List();

  @override
  void initState() {
    widgets.add(HomeScreen());
    widgets.add(EmailScreen());
    widgets.add(PagesScreen());
    widgets.add(AirplayScreen());

    // ..add 被废弃
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationBarItemSelColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _bottomNavigationBarItemSelColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _bottomNavigationBarItemSelColor,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: _bottomNavigationBarItemSelColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _bottomNavigationBarItemSelColor,
              ),
              title: Text(
                'Pages',
                style: TextStyle(color: _bottomNavigationBarItemSelColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _bottomNavigationBarItemSelColor,
              ),
              title: Text(
                'Airplay',
                style: TextStyle(color: _bottomNavigationBarItemSelColor),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

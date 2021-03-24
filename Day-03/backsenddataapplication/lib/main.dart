import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '导航逆向传参',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('逆向传参'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐'),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是小姐姐'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('大长腿'),
              onPressed: () {
                Navigator.pop(context, '大长腿');
              },
            ),
            RaisedButton(
              child: Text('JK'),
              onPressed: () {
                Navigator.pop(context, 'JK');
              },
            )
          ],
        ),
      ),
    );
  }
}

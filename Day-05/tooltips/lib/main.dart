import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToolTipsWidget(),
    );
  }
}

class ToolTipsWidget extends StatelessWidget {
  const ToolTipsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tool tip widget'),
      ),
      body: Center(
        child: Tooltip(
          // ???? 为什么不会出效果呢？
          message: '哈哈111111111111111111111111',
          child: Image.network(
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201509%2F17%2F20150917190203_wtvs5.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618649062&t=ca8ae8a7740d2c7e76862e2674914eb0"),
        ),
      ),
    );
  }
}

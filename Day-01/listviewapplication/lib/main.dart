import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Widget'),
        ),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 改变列表方向
      // scrollDirection: Axis.horizontal,
      children: [
        Image.network('https://newimg.jspang.com/Redux_index.png'),
        Image.network('https://newimg.jspang.com/React_Router.png'),
        Image.network('https://newimg.jspang.com/ReactHooks01-1.jpg'),
        Image.network('https://newimg.jspang.com//next_blog.jpg'),
        // ListTile(
        //   leading: Icon(Icons.perm_device_info),
        //   title: Text('First'),
        // ),
        // ListTile(
        //   leading: Icon(Icons.perm_device_info),
        //   title: Text('First1'),
        // ),
        // ListTile(
        //   leading: Icon(Icons.perm_device_info),
        //   title: Text('First2'),
        // ),
        // ListTile(
        //   leading: Icon(Icons.perm_device_info),
        //   title: Text('First3'),
        // ),
      ],
    );
  }
}

// void main() => runApp(
//     MyApp(items: new List<String>.generate(1000, (index) => "item ${index}")));

// class MyApp extends StatelessWidget {
//   final List<String> items;
//   MyApp({Key key, @required this.items}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'List Widget',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('List Widget'),
//         ),
//         body: ListView.builder(
//             itemCount: items.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: new Text('${items[index]}'),
//               );
//             }),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// style 01
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var stack = new Stack(
//       alignment: const FractionalOffset(0.5, 0.8),
//       children: [
//         CircleAvatar(
//           backgroundImage: NetworkImage(
//               'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1178169395,1475446065&fm=26&gp=0.jpg'),
//           radius: 100.0,
//         ),
//         Container(
//           decoration: BoxDecoration(color: Colors.lightBlue),
//           padding: EdgeInsets.all(5.0),
//           child: Text('哈哈哈哈哈哈哈哈哈哈'),
//         )
//       ],
//     );
//     return MaterialApp(
//         title: 'Stack Widget',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Stack widget'),
//           ),
//           body: Center(
//             child: stack,
//           ),
//         ));
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1178169395,1475446065&fm=26&gp=0.jpg'),
          radius: 100.0,
        ),
        Positioned(top: 10.0, left: 10.0, child: Text('左上')),
        Positioned(bottom: 10.0, right: 10.0, child: Text('右下'))
      ],
    );
    return MaterialApp(
        title: 'Stack Widget',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Stack widget'),
          ),
          body: Center(
            child: stack,
          ),
        ));
  }
}

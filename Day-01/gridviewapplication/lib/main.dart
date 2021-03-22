import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Widget'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7),
          children: [
            Image.network(
                'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632043260.jpg'),
            Image.network(
                'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623673142.jpg'),
            Image.network(
                'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630594837.jpg'),
            Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624419664.jpg'),
            Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623352215.jpg'),
            Image.network(
                'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629056068.webp'),
            Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2633531206.webp'),
            Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2632862664.webp'),
            Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628440875.webp'),
          ],
        ),
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20.0),
        //   crossAxisSpacing: 10.0,
        //   crossAxisCount: 3,
        // children: [
        //   Image.network(
        //       'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2632043260.jpg'),
        //   Image.network(
        //       'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2623673142.jpg'),
        //   Image.network(
        //       'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2630594837.jpg'),
        //   Image.network(
        //       'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2624419664.jpg'),
        //   Image.network(
        //       'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623352215.jpg'),
        //   Image.network(
        //       'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629056068.webp'),
        //   Image.network(
        //       'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2633531206.webp'),
        //   Image.network(
        //       'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2632862664.webp'),
        //   Image.network(
        //       'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628440875.webp'),

        //     // const Text('data1'),
        //     // const Text('data2'),
        //     // const Text('data3'),
        //     // const Text('data4'),
        //     // const Text('data5'),
        //     // const Text('data6')
        //   ],
        // ),
      ),
    );
  }
}

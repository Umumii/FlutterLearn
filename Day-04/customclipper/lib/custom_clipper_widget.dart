import 'package:flutter/material.dart';

class CustomClipperWidget extends StatelessWidget {
  const CustomClipperWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom clipper widget'),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: BottomClipper2(),
            child: Container(
              color: Colors.deepOrangeAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // 贝塞斯曲线
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 30);
    var firstCoutrolPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(firstCoutrolPoint.dx, firstCoutrolPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // 贝塞斯曲线
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 30);
    var firstCoutrolPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 30);
    path.quadraticBezierTo(firstCoutrolPoint.dx, firstCoutrolPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondCoutrolPoint = Offset(size.width / 4 * 3, size.height - 60);
    var secondEndPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondCoutrolPoint.dx, secondCoutrolPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

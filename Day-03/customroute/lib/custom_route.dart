import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 300),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            // 渐隐渐现动画效果
            // return FadeTransition(
            //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            //       parent: animation, curve: Curves.fastOutSlowIn)),
            //   child: child,
            // );

            // 缩放动画效果
            // return ScaleTransition(
            //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            //       parent: animation, curve: Curves.fastOutSlowIn)),
            //   child: child,
            // );

            // 旋转缩放动画效果
            // return RotationTransition(
            //   turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            //       parent: animation, curve: Curves.fastOutSlowIn)),
            //   child: ScaleTransition(
            //       scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            //           parent: animation, curve: Curves.fastOutSlowIn)),
            //       child: child),
            // );
            // 左右滑动转场动画
            return SlideTransition(
              position:
                  Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                      .animate(CurvedAnimation(
                          parent: animation, curve: Curves.fastOutSlowIn)),
              child: child,
            );
          },
        );
}

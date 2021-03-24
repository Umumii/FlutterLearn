import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:ui';

class ForstedGlassWidget extends StatelessWidget {
  const ForstedGlassWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('毛玻璃效果'),
      ),
      body: Stack(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2005235653,1742582269&fm=26&gp=0.jpg"),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'my',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

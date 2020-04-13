import 'package:challengue01/home/content/myStats/curve/painter.dart';
import 'package:flutter/material.dart';

import 'clipper.dart';

class MyCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //Background
        ClipPath(
          clipper: Clipper(),
          child: Container(
            height: 100,
            color: Colors.black.withOpacity(0.2),
          ),
        ),


        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              colors: [
                Color(0xff7492f8),
                Color(0xff54c0e3),
              ],
            ).createShader(rect);
          },
          blendMode: BlendMode.srcATop,
          child: CustomPaint(
            painter: Painter(),
            child: Container(
              height: 100,
            ),
          ),
        ),
        Positioned(
          right: 98,
          top: 40,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff54c0e3),
            ),
          ),
        ),
        Positioned(
          right: 85,
          top: 5,
          child: Text(
            '\$57',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Color(0xff54c0e3),
              fontSize: 20
                ),
          ),
        ),
      ],
    );
  }
}

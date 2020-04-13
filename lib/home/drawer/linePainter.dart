import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.strokeWidth = 8;
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;

    var path = Path();
    path.moveTo(size.width * 0.8, 0.0);
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.15, size.width * 0.7, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.65, size.height, size.width * 0.8, size.height * 1.2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

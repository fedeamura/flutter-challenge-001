import 'package:flutter/cupertino.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.moveTo(size.width * 0.8, 0.0);
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.15, size.width * 0.7, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.65, size.height, size.width * 0.8, size.height * 1.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

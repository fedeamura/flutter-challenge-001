import 'package:flutter/cupertino.dart';

class Clipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.1, 0.0);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.1, size.width * 0.3, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.4, size.height * 0.7, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.65, size.height * 0.45, size.width * 0.7, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0.9, size.width * 0.9, size.height * 0.8);
    path.quadraticBezierTo(size.width * 1, size.height * 0.6, size.width * 1.5, size.height * 0.9);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

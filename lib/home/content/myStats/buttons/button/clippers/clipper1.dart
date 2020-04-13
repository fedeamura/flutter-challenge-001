import 'package:flutter/cupertino.dart';

class Clipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.1, size.width * 0.3, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.50, size.height * 0.6, size.width * 0.75, size.height * 0.3);
    path.quadraticBezierTo(size.width * 1.00, size.height * 0.0, size.width * 1.25, size.height * 0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

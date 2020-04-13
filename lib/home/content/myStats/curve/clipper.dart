import 'package:flutter/cupertino.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var path = Path();
    path.moveTo(size.width * -0.1, 0.0);
    path.quadraticBezierTo(size.width * 0.1, size.height * 1.4, size.width * 0.2, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.3, size.height * -0.4, size.width * 0.4, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.5, size.height * 1.4, size.width * 0.6, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.65, size.height * 0, size.width * 0.8, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0.95, size.width * 1, size.height * 0.6);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

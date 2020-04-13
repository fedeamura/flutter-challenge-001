import 'dart:ui';

import 'package:challengue01/home/drawer/clipper.dart';
import 'package:challengue01/home/drawer/listItem.dart';
import 'package:flutter/material.dart';

import 'linePainter.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clipper(),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: double.infinity,
          color: Colors.black.withOpacity(0.4),
          child: Stack(
            children: <Widget>[
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0),
                    ],
                  ).createShader(rect);
                },
                blendMode: BlendMode.dstIn,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff7492f8),
                        Color(0xff54c0e3),
                      ],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.srcATop,
                  child: CustomPaint(
                    painter: LinePainter(),
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 32.0,
                  top: MediaQuery.of(context).padding.top,
                  bottom: MediaQuery.of(context).padding.bottom,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    Container(
                      height: 16.0,
                    ),
                    DrawerListItem(
                      title: 'VIP Feed',
                      icon: Icons.dashboard,
                    ),
                    DrawerListItem(
                      title: 'Upload content',
                      icon: Icons.file_upload,
                    ),
                    DrawerListItem(
                      title: 'Make money',
                      icon: Icons.attach_money,
                    ),
                    DrawerListItem(
                      title: '24/7 help',
                      icon: Icons.info_outline,
                    ),
                    Spacer(),
                    DrawerListItem(
                      title: 'LOGOUT',
                      icon: Icons.exit_to_app,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

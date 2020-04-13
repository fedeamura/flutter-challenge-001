import 'package:challengue01/home/content/myStats/index.dart';
import 'package:challengue01/home/content/settings/index.dart';
import 'package:challengue01/home/content/subscriptions/index.dart';
import 'package:challengue01/home/drawer/index.dart';
import 'package:flutter/material.dart';

import 'footer/index.dart';
import 'header/index.dart';

enum Tabs {
  MyStats,
  Subscriptions,
  Settings,
}

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Tabs _tab = Tabs.MyStats;

  _onTabChange(Tabs tab) {
    setState(() {
      _tab = tab;
    });
  }

  Widget get _content {
    switch (_tab) {
      case Tabs.MyStats:
        return ContentMyStats();
      case Tabs.Subscriptions:
        return ContentSubscriptions();
      case Tabs.Settings:
        return ContentSettings();
    }

    return Container();
  }

  _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff384468),
              Color(0xff18233c),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            //Content
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0),
                  ],
                ).createShader(
                  Rect.fromLTRB(
                    0,
                    rect.height - 150,
                    rect.width,
                    rect.height,
                  ),
                );
              },
              blendMode: BlendMode.dstIn,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: _content,
              ),
            ),

            //Header
            Header(
              onMenuTap: _openDrawer,
            ),

            //Footer
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Footer(
                tab: _tab,
                onChange: _onTabChange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

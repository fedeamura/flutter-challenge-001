import 'package:challengue01/home/content/myStats/list/index.dart';
import 'package:flutter/material.dart';

import 'buttons/index.dart';
import 'curve/index.dart';
import 'numbers/index.dart';

class ContentMyStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black.withOpacity(0.2),
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).padding.top + 80,
                  ),
                  Buttons(),
                  Numbers(),
                  Container(
                    height: 16.0,
                  ),
                ],
              ),
            ),
            MyCurve(),
            Container(height: 32.0,),
            MyList(),
            Container(height: 120,)
          ],
        ),
      ),
    );
  }
}

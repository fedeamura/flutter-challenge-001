import 'package:challengue01/home/content/myStats/buttons/button/clippers/clipper1.dart';
import 'package:flutter/material.dart';

import 'button/clippers/clipper2.dart';
import 'button/clippers/clipper3.dart';
import 'button/clippers/clipper4.dart';
import 'button/index.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double padding = 32.0;
    final double innerPadding = 20.0;
    final double offset = 32.0;
    final double buttonSize = (MediaQuery.of(context).size.width - (padding * 2) - innerPadding - offset) / 2;

    return Container(
      height: (buttonSize * 2) + (padding * 2) + innerPadding + offset,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: padding + offset,
            top: padding,
            child: Button(
              width: buttonSize,
              colors: [
                Color(0xff798fff),
                Color(0xff6a67fe),
              ],
              title: '437',
              subtitle: 'Total',
              icon: Icons.people,
              clipper: Clipper1(),
            ),
          ),
          Positioned(
            left: padding + buttonSize + innerPadding + offset,
            top: padding + offset,
            child: Button(
              width: buttonSize,
              colors: [
                Color(0xff63acf9),
                Color(0xff438cf8),
              ],
              title: '239',
              subtitle: 'New',
              icon: Icons.person_add,
              clipper: Clipper2(),
            ),
          ),

          Positioned(
            left: padding,
            top: padding + innerPadding + buttonSize,
            child: Button(
              width: buttonSize,
              colors: [
                Color(0xfffe96ad),
                Color(0xffe25485),
              ],
              icon: Icons.money_off,
              title: '15',
              subtitle: 'Lost',
              titleIcon: Icons.keyboard_arrow_down,
              clipper: Clipper4(),
            ),
          ),

          Positioned(
            left: padding + buttonSize + innerPadding,
            top: padding + offset + buttonSize + innerPadding,
            child: Button(
              width: buttonSize,
              colors: [
                Color(0xff58658d),
                Color(0xff343f61),
              ],
              icon: Icons.attach_money,
              title: '4.67',
              subtitle: 'Earnings',
              titleIcon: Icons.keyboard_arrow_up,
              clipper: Clipper3(),
            ),
          ),

//          Button(),
//          Button(),
//          Button(),
        ],
      ),
    );
  }
}

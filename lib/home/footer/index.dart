import 'package:flutter/material.dart';

import '../index.dart';
import 'tab.dart';

class Footer extends StatelessWidget {
  final Tabs tab;
  final Function(Tabs) onChange;

  Footer({
    @required this.tab,
    @required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TabButton(
            title: 'My stats',
            icon: Icons.show_chart,
            selected: tab == Tabs.MyStats,
            onTap: (){
              onChange(Tabs.MyStats);
            },
          ),
          TabButton(
            title: 'Subscriptions',
            icon: Icons.person,
            selected: tab == Tabs.Subscriptions,
            onTap: (){
              onChange(Tabs.Subscriptions);
            },
          ),
          TabButton(
            title: 'Settings',
            icon: Icons.settings,
            selected: tab == Tabs.Settings,
            onTap: (){
              onChange(Tabs.Settings);
            },
          ),
        ],
      ),
    );
  }
}

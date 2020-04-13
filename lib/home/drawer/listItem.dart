import 'package:flutter/material.dart';

class DrawerListItem extends StatelessWidget {
  final String title;
  final IconData icon;

  DrawerListItem({
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Icon(
                icon ?? Icons.help,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Text(
            title ?? 'Title',
            style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(0.8)),
          ),
        ],
      ),
    );
  }
}

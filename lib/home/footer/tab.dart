import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final bool selected;
  final String title;
  final IconData icon;
  final Function() onTap;

  TabButton({
    this.selected = false,
    this.title = '',
    this.icon = Icons.help,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Container(
              height: 16.0,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Icon(
                    icon,
                    size: 30,
                    color: Colors.white.withOpacity(selected ? 1 : 0.6),
                  ),
                  Container(
                    height: 8.0,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.white.withOpacity(selected ? 0.8 : 0.4),
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xff6d8fed).withOpacity(selected ? 1 : 0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

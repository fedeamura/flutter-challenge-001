import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Function() onMenuTap;

  Header({this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 32.0,
        right: 32.0,
      ),
      height: 80,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white.withOpacity(0.6),
            ),
            onPressed: onMenuTap,
          ),
          Expanded(
            child: Center(
              child: Text(
                'TITLE',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white.withOpacity(
                        0.6,
                      ),
                    ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.white.withOpacity(0.6),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

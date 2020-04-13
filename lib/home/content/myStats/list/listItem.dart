import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.0, bottom: 32.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            child: Text(
              '03.08.20',
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(0.4)),
            ),
          ),
          Container(
            width: 100,
            child: Text(
              '\$4.56204',
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(0.4)),
            ),
          ),
          Spacer(),
          Text(
            'Pending',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Color(0xff54c0e3),
                ),
          ),
        ],
      ),
    );
  }
}

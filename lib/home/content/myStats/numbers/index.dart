import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          for (int i = 5; i <= 11; i++)
            Text(
              '$i',
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(i == 10 ? 1 : 0.6)),
            )
        ],
      ),
    );
  }
}

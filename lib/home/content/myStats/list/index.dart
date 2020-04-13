import 'package:challengue01/home/content/myStats/list/listItem.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Payment History',
                  style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white),
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white.withOpacity(0.6),
              )
            ],
          ),
          MyListItem(),
          Container(height: 1, color: Colors.white.withOpacity(0.1),),
          MyListItem(),
          Container(height: 1, color: Colors.white.withOpacity(0.1),),
          MyListItem(),
          Container(height: 1, color: Colors.white.withOpacity(0.1),),
          MyListItem(),
          Container(height: 1, color: Colors.white.withOpacity(0.1),),
          MyListItem(),
          Container(height: 1, color: Colors.white.withOpacity(0.1),),
          MyListItem(),
          Container(height: 1, color: Colors.white.withOpacity(0.1),),
          MyListItem(),
        ],
      ),
    );
  }
}

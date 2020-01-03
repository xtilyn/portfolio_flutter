import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Row(
              children: <Widget>[
                Text(
                  'CA',
                  style: TextStyle(
                    fontSize: 30,
                  )
                ),
                Icon(
                  Icons.fiber_manual_record,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('About'),
              SizedBox(width: 50,),
              _NavBarItem('Contact')
            ],
          )
        ],
      )
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 18));
  }

}
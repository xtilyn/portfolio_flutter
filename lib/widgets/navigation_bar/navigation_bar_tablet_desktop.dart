import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {

  const NavigationBarTabletDesktop({Key key}) : super(key: key);


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
              NavBarItem('About'),
              SizedBox(width: 50,),
              NavBarItem('Contact')
            ],
          )
        ],
      )
    );
  }
}
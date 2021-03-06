import 'package:flutter/material.dart';
import 'package:flutter_portfolio/routing/route_names.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navbar_item.dart';
import 'package:flutter_portfolio/widgets/signature/signature.dart';

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
            child: HandCursor(child: Signature())
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              HandCursor(child: NavBarItem('About', AboutRoute)),
              SizedBox(width: 50,),
              HandCursor(child: NavBarItem('Contact', ContactRoute))
            ],
          )
        ],
      )
    );
  }
}
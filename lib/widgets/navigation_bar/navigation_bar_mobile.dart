import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/signature/signature.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  NavigationBarMobile(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          Signature()
        ],
      ),
    );
  }
}
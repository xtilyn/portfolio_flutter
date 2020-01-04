import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';

class NavigationBarBackBtn extends StatelessWidget {
  const NavigationBarBackBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          HandCursor(
            child: IconButton(
              iconSize: 50,
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

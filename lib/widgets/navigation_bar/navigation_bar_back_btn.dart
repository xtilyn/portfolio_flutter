import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';

class NavigationBarBackBtn extends StatelessWidget {
  final String title;
  const NavigationBarBackBtn(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 42,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

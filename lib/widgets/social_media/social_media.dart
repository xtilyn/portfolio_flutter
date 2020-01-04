import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  final String link;
  final String title;
  SocialMedia(this.title, this.link);

  @override
  Widget build(BuildContext context) {
    return HandCursor(
      child: Center(
        child: FlatButton(
          onPressed: () {
            launch(this.link);
          },
          child: Container(
            height: 50,
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.link),
                SizedBox(width: 8,),
                Text(title)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

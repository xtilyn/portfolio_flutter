import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_colors.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  final String link;
  final String title;
  final String logoPath;
  final double fontSize;
  SocialMedia(this.title, this.link, this.logoPath, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: HandCursor(
        child: Center(
          child: OutlineButton(
            color: primaryColor,
            onPressed: () {
              launch(this.link);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    title, 
                    style: TextStyle(fontSize: this.fontSize),
                    textAlign: TextAlign.center,
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

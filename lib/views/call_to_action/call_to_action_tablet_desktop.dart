import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_colors.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';

class CallToActionTabletDesktop extends StatelessWidget {

  final Function onTap;
  final String title;
  const CallToActionTabletDesktop(this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return HandCursor(
      child: FlatButton(
        onPressed: this.onTap,
        color: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

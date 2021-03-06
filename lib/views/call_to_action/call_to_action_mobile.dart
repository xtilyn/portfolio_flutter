import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final Function onTap;
  final String title;
  const CallToActionMobile(this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

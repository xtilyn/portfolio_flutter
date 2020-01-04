import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_colors.dart';
import 'package:flutter_portfolio/routing/route_names.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, PortfolioRoute);
        },
        child: Container(
          height: 150,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'SEE PORTFOLIO',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              Text(
                'TAP HERE',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  NavigationBar(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(_scaffoldKey),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
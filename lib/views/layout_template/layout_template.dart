import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/nav_drawer/navigation_drawer.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  LayoutTemplate(this.child);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: this.child,
              )
            ],
          ),
        ),
      ),
    );
  }
}
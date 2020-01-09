import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_back_btn.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktopView = CenteredView(
      child: Column(
        children: <Widget>[
          NavigationBarBackBtn('Contact'),
          Center(
            child: Text('Contact View'),
          )
        ],
      ),
    );
    final mobileView = Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          NavigationBarBackBtn('Contact'),
          Center(
            child: Text('Contact View'),
          )
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenTypeLayout(
        mobile: mobileView,
        desktop: desktopView,
        tablet: desktopView,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/home/home_content_desktop.dart';
import 'package:flutter_portfolio/views/home/home_content_mobile.dart';
import 'package:flutter_portfolio/views/nav_drawer/navigation_drawer.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final desktopView = CenteredView(
        child: Column(
      children: <Widget>[
        NavigationBar(_scaffoldKey),
        Expanded(
          child: ScreenTypeLayout(
            mobile: HomeContentMobile(),
            desktop: HomeContentDesktop(),
            tablet: HomeContentMobile(),
          ),
        )
      ],
    ));
    final mobileView = Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            NavigationBar(_scaffoldKey),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
                tablet: HomeContentMobile(),
              ),
            )
          ],
        ));

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
          key: _scaffoldKey,
          drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
          backgroundColor: Colors.white,
          body: ScreenTypeLayout(
            mobile: mobileView,
            desktop: desktopView,
            tablet: mobileView,
          )),
    );
  }
}

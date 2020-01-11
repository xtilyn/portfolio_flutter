import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/about/about_content_desktop.dart';
import 'package:flutter_portfolio/views/about/about_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenTypeLayout(
        mobile: AboutContentMobile(),
        desktop: AboutContentDesktop(),
        tablet: AboutContentDesktop(),
      ),
    );
  }
}

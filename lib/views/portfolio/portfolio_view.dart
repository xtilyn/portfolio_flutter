import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/portfolio/portfolio_content_desktop.dart';
import 'package:flutter_portfolio/views/portfolio/portfolio_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: PortfolioContentDesktop(),
      mobile: PortfolioContentMobile(),
      tablet: PortfolioContentDesktop(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/portfolio_snippet/portfolio_snippet.dart';
import 'package:flutter_portfolio/widgets/profile_snippet/profile_snippet.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ProfileSnippet(),
        SizedBox(height: 100),
        PortfolioSnippet('See Portfolio')
      ],
    );
  }
}
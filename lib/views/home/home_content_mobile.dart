import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/app_colors.dart';
import 'package:flutter_portfolio/widgets/portfolio_snippet/portfolio_snippet.dart';
import 'package:flutter_portfolio/widgets/profile_snippet/profile_snippet.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: bgGray,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              ProfileSnippet(),
              SizedBox(height: 100),
              PortfolioSnippet('See Portfolio')
            ],
          ),
        ),
      ),
    );
  }
}

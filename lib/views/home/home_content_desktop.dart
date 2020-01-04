import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/portfolio_snippet/portfolio_snippet.dart';
import 'package:flutter_portfolio/widgets/profile_snippet/profile_snippet.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileSnippet(),
              Expanded(child: Center(child: PortfolioSnippet('See Portfolio')))
            ]),
      ),
    );
  }
}

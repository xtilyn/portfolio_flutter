import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_portfolio/widgets/portfolio_snippet/portfolio_snippet.dart';
import 'package:flutter_portfolio/widgets/profile_snippet/profile_snippet.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(children: [
                ProfileSnippet(),
                Expanded(
                  child: Center(
                    child: PortfolioSnippet('See Portfolio')
                  )
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

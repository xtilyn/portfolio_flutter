import 'package:flutter/material.dart';
import 'package:flutter_portfolio/routing/route_names.dart';
import 'package:flutter_portfolio/views/call_to_action/call_to_action.dart';
import 'package:flutter_portfolio/widgets/cards/portfolio_card.dart';

class PortfolioSnippet extends StatelessWidget {
  final String title;
  const PortfolioSnippet(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          PortfolioCard(),
          SizedBox(height: 50,),
          CallToAction(title, () {
            Navigator.pushNamed(context, PortfolioRoute);
          }),
        ]
      )
    );
  }
}
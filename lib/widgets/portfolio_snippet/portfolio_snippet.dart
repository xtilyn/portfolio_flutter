import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/call_to_action/call_to_action.dart';

class PortfolioSnippet extends StatelessWidget {
  final String title;
  const PortfolioSnippet(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: CallToAction(title)
    );
  }
}
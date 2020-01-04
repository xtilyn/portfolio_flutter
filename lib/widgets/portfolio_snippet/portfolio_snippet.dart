import 'package:flutter/material.dart';
import 'package:flutter_portfolio/routing/route_names.dart';
import 'package:flutter_portfolio/views/call_to_action/call_to_action.dart';
import 'package:flutter_portfolio/widgets/cards/cards_container.dart';

import '../../data.dart';

class PortfolioSnippet extends StatefulWidget {
  final String title;
  const PortfolioSnippet(this.title);

  @override
  _PortfolioSnippetState createState() => _PortfolioSnippetState(this.title);
}

class _PortfolioSnippetState extends State<PortfolioSnippet> {
  final String title;
  _PortfolioSnippetState(this.title);
  var currentPage = images.length - 1;
  
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page.round();
      });
    });

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
                children: <Widget>[
                  CardsContainer(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),
          SizedBox(height: 50,),
          CallToAction(this.title, () {
            Navigator.pushNamed(context, PortfolioRoute);
          }),
        ]
      )
    );
  }
}
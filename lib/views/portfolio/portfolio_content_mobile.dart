import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/cards/back_card_content.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_back_btn.dart';
import 'package:flutter_portfolio/widgets/tags/tags.dart';

import '../../data.dart';

class PortfolioContentMobile extends StatelessWidget {
  const PortfolioContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    final width = queryData.size.width;
    final height = queryData.size.height / 2;

    List<Widget> cards = new List();
    for (int i = 0; i < title.length; i++) {
      final tags = new List<Widget>(portfolioItems[i].tags.length);
      for (int j = 0; j < portfolioItems[i].tags.length; j++) {
        final tagName = portfolioItems[i].tags[j];
        final tagItem = Tag(tagName);
        tags[j] = tagItem;
      }

      final card = Container(
        width: width,
        height: height,
        child: Padding(
            padding: EdgeInsets.all(12.0),
            child: FlipCard(
                direction: FlipDirection.VERTICAL,
                front: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          portfolioItems[i].title,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          portfolioItems[i].type,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(portfolioItems[i].description,
                            style: TextStyle(fontSize: 18)),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: tags,
                        )
                      ],
                    ),
                  ),
                ),
                back: BackCardContent(width, height, portfolioItems[i]))),
      );
      cards.add(card);
    }
    final listContent = Expanded(
      child: ListView(
        padding: const EdgeInsets.all(28),
        children: cards,
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[NavigationBarBackBtn('Portfolio'), listContent],
          ),
        ));
  }
}

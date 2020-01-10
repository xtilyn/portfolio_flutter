import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data.dart';
import 'package:flutter_portfolio/widgets/cards/back_card_content_desktop.dart';
import 'package:flutter_portfolio/widgets/cards/front_card_content_desktop.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_back_btn.dart';
import 'package:flutter_portfolio/widgets/tags/tags.dart';

class PortfolioContentDesktop extends StatelessWidget {
  const PortfolioContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    final width = queryData.size.width;
    final height = queryData.size.height / 2;

    List<Widget> cards = new List();
    for (int i = 0; i < portfolioItems.length; i++) {
      final tags = new List<Widget>(portfolioItems[i].tags.length);
      for (int j = 0; j < portfolioItems[i].tags.length; j++) {
        final tagName = portfolioItems[i].tags[j];
        final tagItem = Tag(tagName);
        tags[j] = tagItem;
      }

      final card = FlipCard(
        direction: FlipDirection.VERTICAL,
        front: FrontCardContentDesktop(width, height, portfolioItems[i], tags),
        back: BackCardContentDesktop(width, height, portfolioItems[i]),
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
        body: CenteredView(
          child: Column(
            children: <Widget>[NavigationBarBackBtn('Portfolio'), listContent],
          ),
        ));
  }
}

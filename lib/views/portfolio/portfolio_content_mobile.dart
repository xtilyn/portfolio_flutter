import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_back_btn.dart';

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
      final card = Container(
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title[i],
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    portfolioItems[i].type,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
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

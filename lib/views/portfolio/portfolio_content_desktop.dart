import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';
import 'package:flutter_portfolio/widgets/cards/back_card_content.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_back_btn.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioContentDesktop extends StatelessWidget {
  const PortfolioContentDesktop({Key key}) : super(key: key);

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
        final tagItem = Padding(
            padding: EdgeInsets.only(left: 4, top: 4),
            child: Material(
              color: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 4),
                  child: Text(
                    tagName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                      ),
                  )),
            ));
        tags[j] = tagItem;
      }

      final card = FlipCard(
        direction: FlipDirection.VERTICAL,
        front: Container(
          width: width,
          height: height,
          child: HandCursor(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: FittedBox(
                            child: Image.asset(images[i]),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                launch(portfolioItems[i].url);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    portfolioItems[i].title,
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(width: 8,),
                                  Icon(Icons.link),
                                  SizedBox(width: 4,)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              portfolioItems[i].type,
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(portfolioItems[i].description,
                                  style: TextStyle(fontSize: 22)),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Wrap(
                              children: tags,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
        back: BackCardContent(width, height, portfolioItems[i]),
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

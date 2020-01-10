import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data.dart';

class FrontCardContentDesktop extends StatelessWidget {
  final double width;
  final double height;
  final PortfolioItem portfolioItem;
  final List<Widget> tags;
  const FrontCardContentDesktop(this.width, this.height, this.portfolioItem, this.tags);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        child: Image.asset(portfolioItem.imagePath),
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
                            launch(portfolioItem.url);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                portfolioItem.title,
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.link),
                              SizedBox(
                                width: 4,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          portfolioItem.type,
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(portfolioItem.description,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data.dart';
import 'package:flutter_portfolio/utils/hand_cursor.dart';

class BackCardContent extends StatelessWidget {
  final double width;
  final double height;
  final PortfolioItem portfolioItem;
  const BackCardContent(this.width, this.height, this.portfolioItem);

  @override
  Widget build(BuildContext context) {
    // print('width: '+width.toString()+', height: '+height.toString());
    final bool isMobile = width < 600;
    final double fontSize = isMobile ? 18 : 22;
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
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Project Length: ' + portfolioItem.projectLength,
                    style: TextStyle(fontSize: fontSize),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: isMobile
                        ? EdgeInsets.only(left: 50, right: 50)
                        : EdgeInsets.all(0),
                    child: Text(
                      'Associated with: ' + portfolioItem.associatedWith,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.copyright),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        portfolioItem.year,
                        style: TextStyle(fontSize: fontSize),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

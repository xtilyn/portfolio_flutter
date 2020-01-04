import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({Key key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
        elevation: 0.0,
        child: Container(
            width: 265,
            height: 320,
            child: Image.asset('assets/logo.png'),
          ),
      ),
    );
  }
}
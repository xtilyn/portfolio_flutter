import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data.dart';
import 'package:flutter_portfolio/widgets/centered_view/centered_view.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar_back_btn.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    final width = 100.0;
    final height = queryData.size.height / 2;

    List<Widget> cards = new List();
    for (int i = 0; i < title.length; i++) {
      final card = Container(
        width: width,
        height: height,
        child: Card(
          child: Column(
            children: <Widget>[Text(title[i])],
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

    final desktopView = CenteredView(
      child: Column(
        children: <Widget>[NavigationBarBackBtn(), listContent],
      ),
    );

    final mobileView = Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[NavigationBarBackBtn(), listContent],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenTypeLayout(
        mobile: mobileView,
        desktop: desktopView,
        tablet: desktopView,
      ),
    );
  }
}

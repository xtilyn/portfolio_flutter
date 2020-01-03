import 'package:flutter/material.dart';
import 'package:flutter_portfolio/routing/route_names.dart';
import 'package:flutter_portfolio/views/about/about.dart';
import 'package:flutter_portfolio/views/contact/contact.dart';
import 'package:flutter_portfolio/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}

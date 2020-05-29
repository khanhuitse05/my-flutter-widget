import 'package:flutter/material.dart';
import 'package:mywidget/home_view.dart';
import 'package:mywidget/view/typography_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    /// add settings on MaterialPageRoute for which route you want to tracking
    var data = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeView(), settings: settings);
      case '/typography-view':
        return MaterialPageRoute(
            builder: (_) => TypographyView(), settings: settings);
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text(settings.name),
            ),
            body: Center(
              child: Text(
                '404 not found',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        );
    }
  }
}

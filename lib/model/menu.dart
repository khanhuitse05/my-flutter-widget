import 'package:flutter/cupertino.dart';

class Menu {
  final String title;
  final String body;
  final String url;

  String get router {
    String _temp = title;
    _temp = _temp.toLowerCase();
    _temp = _temp.replaceAll(" ", "-");
    return "/" + _temp + "-view";
  }

  final IconData icon;

  Menu(this.title, {this.body, this.icon, this.url});

  onClick(BuildContext context) {
    Navigator.pushNamed(context, router);
  }
}

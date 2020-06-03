import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mywidget/view/cupertino/cupertion_form_tap.dart';
import 'package:mywidget/view/cupertino/cupertiono_modal_tap.dart';
import 'package:mywidget/view/cupertino/cupertiono_widget_tap.dart';

class CupertinoView extends StatefulWidget {
  @override
  _CupertinoViewState createState() => _CupertinoViewState();
}

class _CupertinoViewState extends State<CupertinoView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            for (final tap in tapData)
              BottomNavigationBarItem(
                  title: Text(tap.title), icon: Icon(tap.icon))
          ],
        ),
        tabBuilder: (context, index) {
          final tap = tapData[index];
          return CupertinoTabView(
            builder: (context) {
              return tap.tap;
            },
            defaultTitle: tap.title,
          );
        },
      ),
    );
  }

  List<TapData> tapData = [
    TapData("Widget", icon: CupertinoIcons.settings, tap: CupertinoWidgetTap()),
    TapData("Modal", icon: CupertinoIcons.collections, tap: CupertinoModalTap()),
    TapData("From", icon: CupertinoIcons.news, tap: CupertinoFormTap()),
  ];
}

class TapData {
  String title;
  IconData icon;
  Widget tap;

  TapData(this.title, {this.icon, this.tap});
}


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mywidget/model/menu.dart';
import 'package:mywidget/ui/utility/menu_item.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My widget')),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(bottom: 32),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return MenuItem(menus[index]);
                  },
                  childCount: menus.length,
                ),
              ),
            )
          ],
        ));
  }

  final List<Menu> menus = [
    Menu("Typography", body: "Typography", icon: Icons.text_fields),
    Menu("Bottom app bar", body: "Bottom app bar", icon: Icons.menu),
    Menu("Button", body: "", icon: Icons.get_app),
    Menu("List", body: "", icon: Icons.get_app),
    Menu("Card", body: "", icon: Icons.get_app),
    Menu("Alerts", body: "", icon: Icons.get_app),
    Menu("Tooltip", body: "SnackBar & Tooltip", icon: Icons.get_app),
    Menu("Navigation", body: "", icon: Icons.get_app),
    Menu("Icons", body: "", icon: Icons.get_app),
    Menu("Forms", body: "", icon: Icons.get_app),
    Menu("Align", body: "", icon: Icons.get_app),
    Menu("Animation", body: "", icon: Icons.get_app),
    Menu("AspectRatio", body: "", icon: Icons.get_app),
    Menu("Baseline", body: "", icon: Icons.get_app),
    Menu("BottomSheet", body: "", icon: Icons.get_app),
  ];
}

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

  List<Menu> get menus => [
        Menu("Typography", body: "Typography", icon: Icons.text_fields),
        Menu("Bottom app bar", body: "Bottom app bar", icon: Icons.menu),
        Menu("Button", body: "Button", icon: Icons.web),
        Menu("List", body: "List", icon: Icons.format_list_bulleted),
        Menu("Card", body: "Card", icon: Icons.chrome_reader_mode),
        Menu("List Title",
            body: "List Title", icon: Icons.format_list_bulleted),
        Menu("Alert",
            body: "Alerts, SnackBar & Tooltip", icon: Icons.tab_unselected),
        Menu("Text Field",
            body: "Text Field, Text Field Form", icon: Icons.menu),
        Menu("Row & Column", body: "Row & Column", icon: Icons.graphic_eq),
        Menu("Wrap & Chip", body: "Wrap & Chip", icon: Icons.edit_attributes),
        Menu("Stack & Align", body: "Stack & Align", icon: Icons.content_copy),
        Menu("Container",
            body: "Container", icon: Icons.check_box_outline_blank),
        Menu("Animation", body: "", icon: Icons.get_app),
        Menu("AspectRatio", body: "", icon: Icons.get_app),
        Menu("Baseline", body: "", icon: Icons.get_app),
      ];
}

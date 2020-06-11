import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mywidget/model/menu.dart';
import 'package:mywidget/ui/menu_item.dart';
import 'package:url_launcher/url_launcher.dart';

import 'core/constans.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My widget'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              launch(kGithubUrl);
            },
          )
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(bottom: 32, top: 16),
        itemBuilder: (context, index) {
          return MenuItem(menus[index]);
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 64),
            child: Divider(
              height: 1,
            ),
          );
        },
        itemCount: menus.length,
      ),
    );
  }

  List<Menu> get menus => [
        Menu(
          "Cupertino",
          body:
              "Beautiful and high-fidelity widgets for current iOS design language.",
          icon: Icons.phone_iphone,
          url: "",
        ),
        Menu(
          "Typography",
          body: "All of the predefined text styles",
          icon: Icons.text_fields,
          url: "",
        ),
        Menu(
          "Bottom app bar",
          body: "Bottom application bar",
          icon: Icons.menu,
          url: "",
        ),
        Menu(
          "Button",
          body:
              "RaisedButton, FlatButton, DropdownButton, FloatingActionButton, IconButton, InkWell, RawMaterialButton",
          icon: Icons.web,
          url: "",
        ),
        Menu(
          "List",
          body: "Scrolling list layout",
          icon: Icons.format_list_bulleted,
          url: "",
        ),
        Menu(
          "Card",
          body: "Cards with rounded corners and decoration, ",
          icon: Icons.chrome_reader_mode,
          url: "",
        ),
        Menu(
          "List Title",
          body:
              "A single fixed-height row that typically contains some text as well as a leading or trailing icon.",
          icon: Icons.format_list_bulleted,
          url: "",
        ),
        Menu(
          "Alert",
          body: "Alerts, SnackBar & Tooltip",
          icon: Icons.tab_unselected,
          url: "",
        ),
        Menu(
          "Text Field",
          body: "Text Field, Text Field Form",
          icon: Icons.menu,
          url: "",
        ),
        Menu(
          "Row & Column",
          body:
              "A widget that displays its children in a horizontal and vertical array",
          icon: Icons.graphic_eq,
          url: "",
        ),
        Menu(
          "Wrap & Chip",
          body: "Wrap & Chip",
          icon: Icons.edit_attributes,
          url: "",
        ),
        Menu(
          "Stack & Align",
          body:
              "A widget that positions its children relative to the edges of its box.",
          icon: Icons.content_copy,
          url: "",
        ),
        Menu(
          "Container",
          body:
              "A convenience widget that combines common painting, positioning, and sizing widgets.",
          icon: Icons.check_box_outline_blank,
          url: "",
        ),
        Menu(
          "Other",
          body: "Sliders, Indicators, Selections",
          icon: Icons.donut_large,
          url: "",
        ),
      ];
}

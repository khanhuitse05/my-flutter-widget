import 'package:flutter/material.dart';
import 'package:mywidget/model/menu.dart';

class MenuItem extends StatelessWidget {
  MenuItem(this.item);

  final Menu item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        item.onClick(context);
      },
      leading: item.icon != null ? Icon(item.icon) : null,
      title: Text(item.title),
      subtitle: item.body != null ? Text(item.body) : null,
    );
  }
}

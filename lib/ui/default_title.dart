import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  DefaultTitle(this.title,
      {this.padding = const EdgeInsets.fromLTRB(16, 16, 16, 8)});

  final String title;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ));
  }
}

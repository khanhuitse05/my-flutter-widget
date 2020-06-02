import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  DefaultTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ));
  }
}

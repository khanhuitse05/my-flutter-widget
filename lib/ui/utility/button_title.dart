import 'package:flutter/material.dart';

class ButtonTitle extends StatelessWidget {
  ButtonTitle(this.title, {this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          if (child != null) child
        ],
      ),
    );
  }
}

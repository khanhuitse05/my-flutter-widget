import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  MyScaffold(this.title, {this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
        actions: <Widget>[
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.share),
          )
        ],
      ),
      body: child,
    );
  }
}

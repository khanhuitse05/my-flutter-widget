import 'package:flutter/material.dart';
import 'package:mywidget/my_scaffold.dart';

class BottomBarView extends StatefulWidget {
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      "Bottom Bar View",
      child: Scaffold(
        body: ListView(
          children: <Widget>[],
        ),
        bottomNavigationBar: BottomBarView(),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),),
      ),
    );
  }
}

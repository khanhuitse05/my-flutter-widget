import 'package:flutter/material.dart';
import 'package:mywidget/ui/button_title.dart';
import 'package:mywidget/ui/default_title.dart';

class BottomBarView extends StatefulWidget {
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom App Bar View"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16),
        children: <Widget>[
          SwitchListTile(
            title: Text("Float Action Button"),
            value: showFloat,
            onChanged: (value) {
              setState(() {
                showFloat = value;
              });
            },
          ),
          SwitchListTile(
            title: Text("Notch"),
            value: notch,
            onChanged: (value) {
              setState(() {
                notch = value;
              });
            },
          ),
          Divider(
            height: 16,
          ),
          DefaultTitle(
            "Float Action Button Position",
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text("Docked - End"),
            groupValue: floatLocation,
            value: FloatingActionButtonLocation.endDocked,
            onChanged: (value) {
              setState(() {
                floatLocation = value;
              });
            },
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text("Docked - Center"),
            groupValue: floatLocation,
            value: FloatingActionButtonLocation.centerDocked,
            onChanged: (value) {
              setState(() {
                floatLocation = value;
              });
            },
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text("Floating - Eng"),
            groupValue: floatLocation,
            value: FloatingActionButtonLocation.endFloat,
            onChanged: (value) {
              setState(() {
                floatLocation = value;
              });
            },
          ),
          RadioListTile<FloatingActionButtonLocation>(
            title: Text("Floating - Center"),
            groupValue: floatLocation,
            value: FloatingActionButtonLocation.centerFloat,
            onChanged: (value) {
              setState(() {
                floatLocation = value;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: notch ? CircularNotchedRectangle() : null,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: floatLocation,
      floatingActionButton: showFloat
          ? FloatingActionButton(
              child: Icon(Icons.add),
            )
          : null,
    );
  }

  bool showFloat = true;
  bool notch = true;
  FloatingActionButtonLocation floatLocation =
      FloatingActionButtonLocation.endDocked;
}

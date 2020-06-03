import 'package:flutter/material.dart';
import 'package:mywidget/core/constans.dart';

class ListTitleView extends StatefulWidget {
  @override
  _ListTitleViewState createState() => _ListTitleViewState();
}

class _ListTitleViewState extends State<ListTitleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Title"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.all(16),
            child: ListTile(
              selected: selected,
              onTap: () {},
              title: Text(kTitle),
              subtitle: Text(kMessage),
              leading: leading
                  ? CircleAvatar(
                      child: Icon(
                        Icons.question_answer,
                        color: Colors.white,
                      ),
                    )
                  : null,
              trailing: trailing ? Icon(Icons.navigate_next) : null,
              isThreeLine: isThreeLine,
              dense: dense,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 16),
          children: <Widget>[
            SwitchListTile(
                title: Text("Selected"),
                value: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                }),
            SwitchListTile(
                title: Text("Leading"),
                value: leading,
                onChanged: (value) {
                  setState(() {
                    leading = value;
                  });
                }),
            SwitchListTile(
                title: Text("Trailing"),
                value: trailing,
                onChanged: (value) {
                  setState(() {
                    trailing = value;
                  });
                }),
            SwitchListTile(
                title: Text("IsThreeLine"),
                value: isThreeLine,
                onChanged: (value) {
                  setState(() {
                    isThreeLine = value;
                  });
                }),
            SwitchListTile(
                title: Text("Dense"),
                value: dense,
                onChanged: (value) {
                  setState(() {
                    dense = value;
                  });
                }),
          ],
        ));
  }

  bool leading = true;
  bool trailing = true;
  bool isThreeLine = false;
  bool dense = true;
  bool selected = true;
}

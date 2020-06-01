import 'package:flutter/material.dart';
import 'package:mywidget/my_scaffold.dart';

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
              title: Text("The Card Title"),
              subtitle: Text(
                  "Cras quis nulla commodo, aliquam lectus sed, blandit augue. Cras ullamcorper bibendum bibendum. Duis tincidunt urna non pretium porta."),
              leading: leading
                  ? Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
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
            _buildController("Selected", value: selected, onChange: (value) {
              selected = value;
            }),
            _buildController("Leading", value: leading, onChange: (value) {
              leading = value;
            }),
            _buildController("Trailing", value: trailing, onChange: (value) {
              trailing = value;
            }),
            _buildController("IsThreeLine", value: isThreeLine,
                onChange: (value) {
              isThreeLine = value;
            }),
            _buildController("Dense", value: dense, onChange: (value) {
              dense = value;
            }),
          ],
        ));
  }

  bool leading = true;
  bool trailing = true;
  bool isThreeLine = false;
  bool dense = true;
  bool selected = true;

  Widget _buildController(title, {value, onChange}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: <Widget>[
        Expanded(
          child: Text(title),
        ),
        Switch(
            value: value,
            onChanged: (value) {
              setState(() {
                onChange(value);
              });
            }),
      ]),
    );
  }
}

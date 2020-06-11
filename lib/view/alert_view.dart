import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:mywidget/core/constans.dart';

class AlertDemoView extends StatefulWidget {
  @override
  _AlertDemoViewState createState() => _AlertDemoViewState();
}

class _AlertDemoViewState extends State<AlertDemoView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16),
        children: <Widget>[
          _buildTitle("Alert Dialog", () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text(kTitle),
                    content: Text(kMessage),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("YES"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FlatButton(
                        child: Text("NO"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
          }),
          _buildTitle("Alert success", () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Icon(Icons.check_circle, size: 64, color: Colors.green,),
                    content: Text(kMessage),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("YES"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FlatButton(
                        child: Text("NO"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
          }),
          _buildTitle("Modal Bottom Sheet", () {
            showModalBottomSheet(
                context: context,
                builder: (_) {
                  return Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom, top: 16),
                    child: ListTile(
                      title: Text(kTitle),
                      subtitle: Text(kMessage),
                    ),
                  );
                });
          }),
          Builder(builder: (context) {
            return _buildTitle(
              "Show snack bar",
              () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Show snack bar"),
                ));
              },
            );
          }),
        ],
      ),
    );
  }

  Widget _buildTitle(String title, VoidCallback onPressed) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.navigate_next),
      onTap: onPressed,
    );
  }
}

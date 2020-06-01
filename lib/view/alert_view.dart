import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:mywidget/my_scaffold.dart';
import 'package:flutter/cupertino.dart';

class AlertDemoView extends StatefulWidget {
  @override
  _AlertDemoViewState createState() => _AlertDemoViewState();
}

class _AlertDemoViewState extends State<AlertDemoView> {
  final String _title = "Message Preview";
  final String _shortMessage =
      "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim";
  final String _message =
      "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis nibh lacinia at. Vestibulum nec erat ut mi sollicitudin porttitor id sit amet risus";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      "Alert view",
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 16),
        children: <Widget>[
          ListTile(
            title: CupertinoContextMenu(
              child: Material(
                  child: Text(
                "Cupertino Context menu",
                style: Theme.of(context).textTheme.subtitle1,
              )),
              actions: <Widget>[
                CupertinoContextMenuAction(
                  child: const Text('Share now'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: const Text('Delete'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          _buildTitle("Cupertino Action Sheet", () {
            showCupertinoModalPopup(
                context: context,
                builder: (_) {
                  return CupertinoActionSheet(
                    title: Text(_title),
                    message: Text(_shortMessage),
                    cancelButton: CupertinoActionSheetAction(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    actions: <Widget>[
                      CupertinoActionSheetAction(
                        child: Text("Apple"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: Text("Orange"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                });
          }),
          _buildTitle("Cupertino Alert Dialog", () {
            showCupertinoDialog(
                context: context,
                builder: (_) {
                  return CupertinoAlertDialog(
                    title: Text(_title),
                    content: Text(_message),
                    actions: <Widget>[
                      CupertinoActionSheetAction(
                        child: Text("Yes"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        child: Text(
                          "No",
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
          }),
          _buildTitle("Alert Dialog", () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text(_title),
                    content: Text(_message),
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
                    title: Center(
                      child: Container(
                        height: 64,
                        width: 64,
                        child: const FlareActor(
                          "assets/success.flr",
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          animation: 'Untitled',
                        ),
                      ),
                    ),
                    content: Text(_message),
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
                      title: Text(_title),
                      subtitle: Text(_message),
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

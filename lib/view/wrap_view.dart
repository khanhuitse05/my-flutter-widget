import 'package:flutter/material.dart';
import 'package:mywidget/ui/default_title.dart';

class WrapDemoView extends StatefulWidget {
  @override
  _WrapDemoViewState createState() => _WrapDemoViewState();
}

class _WrapDemoViewState extends State<WrapDemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap view"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          DefaultTitle("Chip Chip"),
          Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: <Widget>[
              Chip(
                label: Text("Chip"),
                elevation: elevation,
                avatar: avatar ? _buildAvatar() : null,
                onDeleted: deleteIcon ? () {} : null,
                shape: getShape(),
              ),
              ActionChip(
                label: Text("ActionChip"),
                onPressed: () {},
                elevation: elevation,
                avatar: avatar ? _buildAvatar() : null,
                shape: getShape(),
              ),
              RawChip(
                label: Text("RawChip"),
                elevation: elevation,
                avatar: avatar ? _buildAvatar() : null,
                onDeleted: deleteIcon ? () {} : null,
                shape: getShape(),
              ),
            ],
          ),
          DefaultTitle("Choice Chip"),
          Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: <Widget>[
              ChoiceChip(
                label: Text("Disable"),
                selected: false,
                elevation: elevation,
                avatar: avatar ? _buildAvatar() : null,
                shape: getShape(),
              ),
              ChoiceChip(
                label: Text("Small"),
                selected: choice == 1,
                elevation: elevation,
                onSelected: (value) {
                  setState(() {
                    choice = value ? 1 : 0;
                  });
                },
                avatar: avatar ? _buildAvatar() : null,
                shape: getShape(),
              ),
              ChoiceChip(
                label: Text("Large"),
                selected: choice == 2,
                elevation: elevation,
                onSelected: (value) {
                  setState(() {
                    choice = value ? 2 : 0;
                  });
                },
                avatar: avatar ? _buildAvatar() : null,
                shape: getShape(),
              ),
            ],
          ),
          DefaultTitle("Input Chip"),
          Wrap(spacing: spacing, runSpacing: runSpacing, children: <Widget>[
            InputChip(
              label: Text("Disable"),
              elevation: elevation,
              onDeleted: deleteIcon ? () {} : null,
              shape: getShape(),
              selected: false,
            ),
            InputChip(
              label: Text("iOS"),
              elevation: elevation,
              onDeleted: deleteIcon ? () {} : null,
              shape: getShape(),
              selected: filterIOS,
              onPressed: () {
                setState(() {
                  filterIOS = !filterIOS;
                });
              },
            ),
            InputChip(
              label: Text("Android"),
              elevation: elevation,
              onDeleted: deleteIcon ? () {} : null,
              shape: getShape(),
              selected: filterAndroid,
              onPressed: () {
                setState(() {
                  filterAndroid = !filterAndroid;
                });
              },
            ),
          ]),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: SwitchListTile(
                      title: Text("elevation",
                          style: Theme.of(context).textTheme.caption),
                      value: elevation > 0,
                      onChanged: (value) {
                        setState(() {
                          elevation = elevation == 0 ? 5 : 0;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: SwitchListTile(
                      title: Text("avatar",
                          style: Theme.of(context).textTheme.caption),
                      value: avatar,
                      onChanged: (value) {
                        setState(() {
                          avatar = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SwitchListTile(
                      title: Text("deleteIcon",
                          style: Theme.of(context).textTheme.caption),
                      value: deleteIcon,
                      onChanged: (value) {
                        setState(() {
                          deleteIcon = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: DropdownButton<EBorder>(
                        value: border,
                        style: Theme.of(context).textTheme.caption,
                        icon: Icon(Icons.keyboard_arrow_down),
                        onChanged: (newValue) {
                          setState(() {
                            border = newValue;
                          });
                        },
                        items: [
                          DropdownMenuItem<EBorder>(
                            value: EBorder.StadiumBorder,
                            child: Text("Stadium"),
                          ),
                          DropdownMenuItem<EBorder>(
                            value: EBorder.UnderlineInputBorder,
                            child: Text("UnderlineInput"),
                          ),
                          DropdownMenuItem<EBorder>(
                            value: EBorder.BeveledRectangleBorder,
                            child: Text("BeveledRectangle"),
                          ),
                          DropdownMenuItem<EBorder>(
                            value: EBorder.RoundedRectangleBorder,
                            child: Text("RoundedRectangle"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SwitchListTile(
                      title: Text("spacing",
                          style: Theme.of(context).textTheme.caption),
                      value: spacing > 0,
                      onChanged: (value) {
                        setState(() {
                          spacing = spacing == 0 ? 16 : 0;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: SwitchListTile(
                      title: Text("runSpacing",
                          style: Theme.of(context).textTheme.caption),
                      value: runSpacing > 0,
                      onChanged: (value) {
                        setState(() {
                          runSpacing = runSpacing == 0 ? 16 : 0;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool filterIOS = false;
  bool filterAndroid = true;
  int choice = 1;

  double spacing = 20;
  double runSpacing = 0;
  double elevation = 0;
  bool avatar = false;
  bool deleteIcon = false;

  EBorder border = EBorder.StadiumBorder;

  Widget _buildAvatar() {
    return CircleAvatar(
      child: Icon(
        Icons.perm_identity,
        size: 16,
      ),
    );
  }

  ShapeBorder getShape() {
    switch (border) {
      case EBorder.BeveledRectangleBorder:
        return BeveledRectangleBorder(borderRadius: BorderRadius.circular(15));
      case EBorder.RoundedRectangleBorder:
        return RoundedRectangleBorder();
      case EBorder.UnderlineInputBorder:
        return UnderlineInputBorder();
      default:
        return StadiumBorder();
    }
  }
}

enum EBorder {
  StadiumBorder,
  BeveledRectangleBorder,
  RoundedRectangleBorder,
  UnderlineInputBorder
}

import 'package:flutter/material.dart';
import 'package:mywidget/theme/app_styles.dart';
import 'package:mywidget/ui/button_title.dart';

class RowAndColumnView extends StatefulWidget {
  @override
  _RowAndColumnViewState createState() => _RowAndColumnViewState();
}

class _RowAndColumnViewState extends State<RowAndColumnView> {
  @override
  Widget build(BuildContext context) {
    final children = [
      Container(
        child: Icon(
          Icons.brightness_auto,
          size: 32,
        ),
      ),
      Container(
        child: Icon(
          Icons.brightness_auto,
          size: 72,
        ),
      ),
      Container(
          child: Icon(Icons.brightness_auto, size: 32)),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Column"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RadioListTile(
                      value: true,
                      title: Text("Row"),
                      groupValue: row,
                      onChanged: (value) {
                        setState(() {
                          row = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      value: false,
                      title: Text("Column"),
                      groupValue: row,
                      onChanged: (value) {
                        setState(() {
                          row = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            ButtonTitle("mainAxisSize",
                child: DropdownButton<MainAxisSize>(
                  value: mainAxisSize,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      mainAxisSize = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<MainAxisSize>(
                      value: MainAxisSize.min,
                      child: Text("min"),
                    ),
                    DropdownMenuItem<MainAxisSize>(
                      value: MainAxisSize.max,
                      child: Text("max"),
                    )
                  ],
                )),
            ButtonTitle("mainAxisAlignment",
                child: DropdownButton<MainAxisAlignment>(
                  value: mainAxisAlignment,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      mainAxisAlignment = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<MainAxisAlignment>(
                      value: MainAxisAlignment.start,
                      child: Text("start"),
                    ),
                    DropdownMenuItem<MainAxisAlignment>(
                      value: MainAxisAlignment.end,
                      child: Text("end"),
                    ),
                    DropdownMenuItem<MainAxisAlignment>(
                      value: MainAxisAlignment.center,
                      child: Text("center"),
                    ),
                    DropdownMenuItem<MainAxisAlignment>(
                      value: MainAxisAlignment.spaceBetween,
                      child: Text("spaceBetween"),
                    ),
                    DropdownMenuItem<MainAxisAlignment>(
                      value: MainAxisAlignment.spaceEvenly,
                      child: Text("spaceEvenly"),
                    ),
                    DropdownMenuItem<MainAxisAlignment>(
                      value: MainAxisAlignment.spaceAround,
                      child: Text("spaceAround"),
                    )
                  ],
                )),
            ButtonTitle("crossAxisAlignment",
                child: DropdownButton<CrossAxisAlignment>(
                  value: crossAxisAlignment,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      crossAxisAlignment = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<CrossAxisAlignment>(
                      value: CrossAxisAlignment.start,
                      child: Text("start"),
                    ),
                    DropdownMenuItem<CrossAxisAlignment>(
                      value: CrossAxisAlignment.end,
                      child: Text("end"),
                    ),
                    DropdownMenuItem<CrossAxisAlignment>(
                      value: CrossAxisAlignment.stretch,
                      child: Text("stretch"),
                    ),
                    DropdownMenuItem<CrossAxisAlignment>(
                      value: CrossAxisAlignment.center,
                      child: Text("center"),
                    ),
                    DropdownMenuItem<CrossAxisAlignment>(
                      value: CrossAxisAlignment.baseline,
                      child: Text("baseline"),
                    ),
                  ],
                )),
            ButtonTitle("verticalDirection",
                child: DropdownButton<VerticalDirection>(
                  value: verticalDirection,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      verticalDirection = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<VerticalDirection>(
                      value: VerticalDirection.up,
                      child: Text("up"),
                    ),
                    DropdownMenuItem<VerticalDirection>(
                      value: VerticalDirection.down,
                      child: Text("down"),
                    )
                  ],
                )),
            ButtonTitle("textDirection",
                child: DropdownButton<TextDirection>(
                  value: textDirection,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      textDirection = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<TextDirection>(
                      value: TextDirection.rtl,
                      child: Text("rtl"),
                    ),
                    DropdownMenuItem<TextDirection>(
                      value: TextDirection.ltr,
                      child: Text("ltr"),
                    )
                  ],
                )),
            ButtonTitle("textBaseline",
                child: DropdownButton<TextBaseline>(
                  value: textBaseline,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      textBaseline = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<TextBaseline>(
                      value: TextBaseline.alphabetic,
                      child: Text("alphabetic"),
                    ),
                    DropdownMenuItem<TextBaseline>(
                      value: TextBaseline.ideographic,
                      child: Text("ideographic"),
                    )
                  ],
                )),
          ],
        ),
      ),
      body: Container(
        color: Colors.yellow,
        child: row
            ? Row(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                textBaseline: textBaseline,
                textDirection: textDirection,
                verticalDirection: verticalDirection,
                children: children,
              )
            : Column(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                textBaseline: textBaseline,
                textDirection: textDirection,
                verticalDirection: verticalDirection,
                children: children,
              ),
      ),
    );
  }

  bool row = true;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  MainAxisSize mainAxisSize = MainAxisSize.max;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;
  TextDirection textDirection = TextDirection.ltr;
  VerticalDirection verticalDirection = VerticalDirection.down;
  TextBaseline textBaseline = TextBaseline.ideographic;
}

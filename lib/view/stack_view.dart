import 'package:flutter/material.dart';
import 'package:mywidget/theme/app_styles.dart';
import 'package:mywidget/ui/button_title.dart';

class StackAndAlignView extends StatefulWidget {
  @override
  _StackAndAlignViewState createState() => _StackAndAlignViewState();
}

class _StackAndAlignViewState extends State<StackAndAlignView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack & Align"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            alignment: alignment,
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: AppStyles.colorLoop(0),
              ),
              Container(
                width: 200,
                height: 200,
                color: AppStyles.colorLoop(1),
              ),
              Container(
                width: 100,
                height: 100,
                color: AppStyles.colorLoop(2),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ButtonTitle("alignment: ",
                child: DropdownButton<AlignmentGeometry>(
                  value: alignment,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      alignment = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.center,
                      child: Text("center"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.centerLeft,
                      child: Text("centerLeft"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.centerRight,
                      child: Text("centerRight"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.bottomLeft,
                      child: Text("bottomLeft"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.bottomRight,
                      child: Text("bottomRight"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.bottomCenter,
                      child: Text("bottomCenter"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.topRight,
                      child: Text("topRight"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.topCenter,
                      child: Text("topCenter"),
                    ),
                    DropdownMenuItem<AlignmentGeometry>(
                      value: Alignment.topLeft,
                      child: Text("topLeft"),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  AlignmentGeometry alignment = Alignment.center;
}

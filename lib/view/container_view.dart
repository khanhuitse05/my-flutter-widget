import 'package:flutter/material.dart';

class ContainerDemoView extends StatefulWidget {
  @override
  _ContainerDemoViewState createState() => _ContainerDemoViewState();
}

class _ContainerDemoViewState extends State<ContainerDemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container View"),
      ),
    );
  }
}

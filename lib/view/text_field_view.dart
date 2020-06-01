import 'package:flutter/material.dart';
import 'package:mywidget/my_scaffold.dart';

class TextFieldDemoView extends StatefulWidget {
  @override
  _TextFieldDemoViewState createState() => _TextFieldDemoViewState();
}

class _TextFieldDemoViewState extends State<TextFieldDemoView> {
  InputDecoration getDecoration({InputBorder border}) {
    return InputDecoration(
        hintText: !hintText ? null : "Hint Text",
        labelText: !labelText ? null : "Label Text",
        errorText: !errorText ? null : "Error Text",
        helperText: !helpText ? null : "Help Text",
        counterText: !counterText ? null : "232",
        prefix: !prefix ? null : Text("Prefix"),
        suffix: !suffix ? null : Text("Suffix"),
        prefixIcon: !prefixIcon ? null : Icon(Icons.access_alarms),
        suffixIcon: !suffixIcon ? null : IconButton(icon: Icon(Icons.close)),
        isDense: isDense,
        alignLabelWithHint: alignLabelWithHint,
        filled: filled,
        border: border);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form view"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: getDecoration(),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: getDecoration(border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          _buildController("Hint Text", value: hintText, onChange: (value) {
            hintText = value;
          }),
          _buildController("Label Text", value: labelText, onChange: (value) {
            labelText = value;
          }),
          _buildController("Help Text", value: helpText, onChange: (value) {
            helpText = value;
          }),
          _buildController("Error Text", value: errorText, onChange: (value) {
            errorText = value;
          }),
          _buildController("Counter Text", value: counterText,
              onChange: (value) {
            counterText = value;
          }),
          _buildController("Prefix", value: prefix, onChange: (value) {
            prefix = value;
          }),
          _buildController("Suffix", value: suffix, onChange: (value) {
            suffix = value;
          }),
          _buildController("Prefix Icon", value: prefixIcon, onChange: (value) {
            prefixIcon = value;
          }),
          _buildController("Suffix Icon", value: suffixIcon, onChange: (value) {
            suffixIcon = value;
          }),
          _buildController("Is Dense", value: isDense, onChange: (value) {
            isDense = value;
          }),
          _buildController("Filled", value: filled, onChange: (value) {
            filled = value;
          }),
          _buildController("Align Label With Hint", value: alignLabelWithHint,
              onChange: (value) {
            alignLabelWithHint = value;
          }),
        ],
      ),
    );
  }

  bool hintText = true;
  bool labelText = true;
  bool helpText = false;
  bool errorText = true;
  bool prefix = false;
  bool suffix = false;
  bool prefixIcon = false;
  bool suffixIcon = false;
  bool isDense = false;
  bool counterText = false;
  bool filled = false;
  bool alignLabelWithHint = false;

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

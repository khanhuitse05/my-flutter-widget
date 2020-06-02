import 'package:flutter/material.dart';

class OtherView extends StatefulWidget {
  @override
  _OtherViewState createState() => _OtherViewState();
}

class _OtherViewState extends State<OtherView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other view"),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (_, child) {
          return ListView(
            padding: EdgeInsets.fromLTRB(16,16,16,16 + MediaQuery.of(context).padding.bottom),
            children: <Widget>[
              _buildTitle("Progress indicators", Icons.donut_large),
              Center(child: CircularProgressIndicator()),
              const SizedBox(height: 16),
              Center(
                  child: CircularProgressIndicator(
                value: _animation.value,
              )),
              const SizedBox(height: 16),
              LinearProgressIndicator(),
              const SizedBox(height: 16),
              LinearProgressIndicator(
                value: _animation.value,
              ),
              _buildTitle("Selection controls", Icons.check_box),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: checkboxValue[0],
                    onChanged: (value) {
                      setState(() {
                        checkboxValue[0] = value;
                      });
                    },
                  ),
                  Checkbox(
                    value: checkboxValue[1],
                    onChanged: (value) {
                      setState(() {
                        checkboxValue[1] = value;
                      });
                    },
                  ),
                  Checkbox(
                    value: checkboxValue[2],
                    tristate: true,
                    onChanged: (value) {
                      setState(() {
                        checkboxValue[2] = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 0,
                    groupValue: radioValue,
                    onChanged: (value) {
                      setState(() {
                        radioValue = value;
                      });
                    },
                  ),
                  Radio(
                    value: 1,
                    groupValue: radioValue,
                    onChanged: (value) {
                      setState(() {
                        radioValue = value;
                      });
                    },
                  ),
                  Radio(
                    value: 2,
                    groupValue: radioValue,
                    onChanged: (value) {
                      setState(() {
                        radioValue = value;
                      });
                    },
                  ),
                ],
              ),
              Center(
                child: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ),
              _buildTitle("Sliders", Icons.tune),
              Slider(
                value: continuousValue,
                onChanged: (value) {
                  continuousValue = value;
                },
              ),
              Slider(
                value: discreteValue,
                onChanged: (value) {
                  discreteValue = value;
                },
                min: 0,
                max: 100,
                divisions: 5,
                label: discreteValue.toString(),
              ),
              RangeSlider(
                values: continuousRange,
                onChanged: (value) {
                  continuousRange = value;
                },
                labels: RangeLabels(continuousRange.start.toString(),
                    continuousRange.end.toString()),
              ),
              RangeSlider(
                values: discreteRange,
                onChanged: (value) {
                  discreteRange = value;
                },
                min: 0,
                max: 100,
                divisions: 5,
              ),
              _buildTitle("Tooltips", Icons.message),
              Tooltip(
                  message: "This is tooltip",
                  child: IconButton(
                    icon: Icon(
                      Icons.near_me,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  )),
              Text(
                "Long press or hover to display the tooltip",
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }

  List<bool> checkboxValue = [true, false, null];
  int radioValue = 0;
  bool switchValue = false;

  double continuousValue = 0.25;
  double discreteValue = 20;
  RangeValues continuousRange = RangeValues(0.2, 0.5);
  RangeValues discreteRange = RangeValues(40, 80);

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: this,
        animationBehavior: AnimationBehavior.preserve)
      ..forward();
    _animation = CurvedAnimation(
        parent: _controller,
        curve: const Interval(0, 0.9, curve: Curves.fastOutSlowIn))
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _controller.forward();
        } else if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
      });
  }

  @override
  void dispose() {
    _controller.stop();
    super.dispose();
  }

  Widget _buildTitle(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 20,
            color: Colors.purple,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}

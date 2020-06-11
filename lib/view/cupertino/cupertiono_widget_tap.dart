import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywidget/ui/default_title.dart';
import 'package:mywidget/view/cupertino/cupertion_form_tap.dart';

class CupertinoWidgetTap extends StatefulWidget {
  const CupertinoWidgetTap();

  @override
  _CupertinoWidgetTapState createState() => _CupertinoWidgetTapState();
}

class _CupertinoWidgetTapState extends State<CupertinoWidgetTap> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            largeTitle: Text("Widget"),
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1))
                ..then<void>((_) {});
            },
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),
              Text(
                "Pull to refresh",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              DefaultTitle("Indicator"),
              CupertinoActivityIndicator(),
              DefaultTitle("Button"),
              Center(
                  child:
                      CupertinoButton(onPressed: () {}, child: Text("Button"))),
              Center(
                child: CupertinoButton(
                  child: Text("With background"),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                ),
              ),
              DefaultTitle("Slider"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoSlider(
                  value: sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CupertinoSlider(
                  value: sliderDiscreteValue,
                  onChanged: (double value) {
                    setState(() {
                      sliderDiscreteValue = value;
                    });
                  },
                  divisions: 10,
                  min: 0,
                  max: 100,
                ),
              ),
              DefaultTitle("Switch"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoSwitch(
                    value: false,
                  ),
                  CupertinoSwitch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ],
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(height: 256),
          )
        ],
      ),
    );
  }

  double sliderValue = 0.4;
  double sliderDiscreteValue = 20;
  bool switchValue = false;
}

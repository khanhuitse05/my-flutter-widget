import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mywidget/ui/default_title.dart';

import 'bottom_picker.dart';

class CupertinoFormTap extends StatefulWidget {
  const CupertinoFormTap();

  @override
  _CupertinoFormTapState createState() => _CupertinoFormTapState();
}

class _CupertinoFormTapState extends State<CupertinoFormTap> {

  int segmentedValue = 0;
  Duration timer = const Duration();
  DateTime date = DateTime.now();
  DateTime time = DateTime.now();
  DateTime dateTime = DateTime.now();

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
            largeTitle: Text("Form"),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              DefaultTitle("Pickers"),
              _buildDatePicker(context),
              _buildTimePicker(context),
              _buildDateAndTimePicker(context),
              _buildCountdownTimerPicker(context),
              DefaultTitle("Text fields"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: CupertinoTextField(
                  placeholder: "Email",
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: CupertinoTextField(
                      placeholder: "Password", obscureText: true)),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: CupertinoTextField(
                    placeholder: "PIN",
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey))),
                    prefix: const Icon(CupertinoIcons.padlock),
                  )),
              DefaultTitle("Segmented controls"),
              CupertinoSegmentedControl(
                groupValue: segmentedValue,
                onValueChanged: (value) {
                  setState(() {
                    segmentedValue = value;
                  });
                },
                children: {
                  0: Text("Apple"),
                  1: Text("Orange"),
                  2: Text("Lemon")
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: CupertinoSlidingSegmentedControl(
                  groupValue: segmentedValue,
                  onValueChanged: (value) {
                    setState(() {
                      segmentedValue = value;
                    });
                  },
                  children: {
                    0: Text("Apple"),
                    1: Text("Orange"),
                    2: Text("Lemon")
                  },
                ),
              ),
              const SizedBox(height: 32),
            ]),
          ),
        ],
      ),
    );
  }


  Widget _buildDatePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (context) {
            return BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor:
                CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.date,
                initialDateTime: date,
                onDateTimeChanged: (newDateTime) {
                  setState(() => date = newDateTime);
                },
              ),
            );
          },
        );
      },
      child: Menu(children: [
        Text("Pick date"),
        Text(
          DateFormat.yMMMMd().format(date),
          style: const TextStyle(color: CupertinoColors.inactiveGray),
        ),
      ]),
    );
  }

  Widget _buildTimePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (context) {
            return BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor:
                CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.time,
                initialDateTime: time,
                onDateTimeChanged: (newDateTime) {
                  setState(() => time = newDateTime);
                },
              ),
            );
          },
        );
      },
      child: Menu(
        children: [
          Text("Pick Time"),
          Text(
            DateFormat.jm().format(time),
            style: const TextStyle(color: CupertinoColors.inactiveGray),
          ),
        ],
      ),
    );
  }

  Widget _buildDateAndTimePicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (context) {
            return BottomPicker(
              child: CupertinoDatePicker(
                backgroundColor:
                CupertinoColors.systemBackground.resolveFrom(context),
                mode: CupertinoDatePickerMode.dateAndTime,
                initialDateTime: dateTime,
                onDateTimeChanged: (newDateTime) {
                  setState(() => dateTime = newDateTime);
                },
              ),
            );
          },
        );
      },
      child: Menu(
        children: [
          Text("Pick Date Time"),
          Flexible(
            child: Text(
              DateFormat.yMMMd().add_jm().format(dateTime),
              style: const TextStyle(color: CupertinoColors.inactiveGray),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountdownTimerPicker(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (context) {
            return BottomPicker(
              child: CupertinoTimerPicker(
                backgroundColor:
                CupertinoColors.systemBackground.resolveFrom(context),
                initialTimerDuration: timer,
                onTimerDurationChanged: (newTimer) {
                  setState(() => timer = newTimer);
                },
              ),
            );
          },
        );
      },
      child: Menu(
        children: [
          Text("Pick time"),
          Text(
            '${timer.inHours}:'
                '${(timer.inMinutes % 60).toString().padLeft(2, '0')}:'
                '${(timer.inSeconds % 60).toString().padLeft(2, '0')}',
            style: const TextStyle(color: CupertinoColors.inactiveGray),
          ),
        ],
      ),
    );
  }
}

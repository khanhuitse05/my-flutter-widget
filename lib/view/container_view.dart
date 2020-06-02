import 'package:flutter/material.dart';
import 'package:mywidget/ui/utility/button_title.dart';

class ContainerDemoView extends StatefulWidget {
  @override
  _ContainerDemoViewState createState() => _ContainerDemoViewState();
}

class _ContainerDemoViewState extends State<ContainerDemoView> {
  final _imageUrl =
      "https://firebasestorage.googleapis.com/v0/b/my-media-11881.appspot.com/o/banner%2Fmec.jpeg?alt=media&token=745ccc74-6d5f-410b-96b2-bd82505c59c5";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container View"),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              color: bg != EBG.color ? null : Colors.blue,
              image: bg != EBG.image
                  ? null
                  : DecorationImage(
                      image: NetworkImage(_imageUrl), fit: BoxFit.cover),
              gradient: getGradient(),
              border: border ? Border.all(color: Colors.blue, width: 3) : null,
              borderRadius: borderRadius == ERadius.round
                  ? BorderRadius.circular(20)
                  : null,
              boxShadow: boxShadow
                  ? [
                      BoxShadow(
                        color: Colors.amberAccent,
                        blurRadius: 10,
                      )
                    ]
                  : null,
              backgroundBlendMode: bg != EBG.image ? blendMode : null,
              shape: borderRadius == ERadius.circle
                  ? BoxShape.circle
                  : BoxShape.rectangle),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ButtonTitle("Border",
                child: Switch(
                  value: border,
                  onChanged: (value) {
                    setState(() {
                      border = value;
                    });
                  },
                )),
            ButtonTitle("BorderRadius",
                child: DropdownButton<ERadius>(
                  value: borderRadius,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      borderRadius = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<ERadius>(
                      value: ERadius.none,
                      child: Text("None"),
                    ),
                    DropdownMenuItem<ERadius>(
                      value: ERadius.round,
                      child: Text("Round"),
                    ),
                    DropdownMenuItem<ERadius>(
                      value: ERadius.circle,
                      child: Text("Circle"),
                    )
                  ],
                )),
            ButtonTitle("BoxShadow",
                child: Switch(
                  value: boxShadow,
                  onChanged: (value) {
                    setState(() {
                      boxShadow = value;
                    });
                  },
                )),
            ButtonTitle("Background",
                child: DropdownButton<EBG>(
                  value: bg,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      bg = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<EBG>(
                      value: EBG.color,
                      child: Text("color"),
                    ),
                    DropdownMenuItem<EBG>(
                      value: EBG.image,
                      child: Text("image"),
                    ),
                    DropdownMenuItem<EBG>(
                      value: EBG.radialGradient,
                      child: Text("radialGradient"),
                    ),
                    DropdownMenuItem<EBG>(
                      value: EBG.linearGradient,
                      child: Text("linearGradient"),
                    ),
                    DropdownMenuItem<EBG>(
                      value: EBG.sweepGradient,
                      child: Text("sweepGradient"),
                    )
                  ],
                )),
            ButtonTitle("BlendMode",
                child: DropdownButton<BlendMode>(
                  value: blendMode,
                  icon: Icon(Icons.keyboard_arrow_down),
                  onChanged: (newValue) {
                    setState(() {
                      blendMode = newValue;
                    });
                  },
                  items: [
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.color,
                      child: Text("color"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.src,
                      child: Text("src"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.clear,
                      child: Text("clear"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.dstIn,
                      child: Text("dstIn"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.dst,
                      child: Text("dst"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.colorBurn,
                      child: Text("colorBurn"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.colorDodge,
                      child: Text("colorDodge"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.darken,
                      child: Text("darken"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.difference,
                      child: Text("difference"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.dstATop,
                      child: Text("dstATop"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.dstOut,
                      child: Text("dstOut"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.dstOver,
                      child: Text("dstOver"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.exclusion,
                      child: Text("exclusion"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.hardLight,
                      child: Text("hardLight"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.hue,
                      child: Text("hue"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.lighten,
                      child: Text("lighten"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.luminosity,
                      child: Text("luminosity"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.modulate,
                      child: Text("modulate"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.overlay,
                      child: Text("overlay"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.saturation,
                      child: Text("saturation"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.srcOver,
                      child: Text("srcOver"),
                    ),
                    DropdownMenuItem<BlendMode>(
                      value: BlendMode.srcOut,
                      child: Text("srcOut"),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  bool border = true;
  ERadius borderRadius = ERadius.none;
  bool boxShadow = false;
  EBG bg = EBG.color;
  BlendMode blendMode = BlendMode.src;

  Gradient getGradient() {
    switch (bg) {
      case EBG.linearGradient:
        return LinearGradient(colors: [Colors.blue, Colors.red]);
      case EBG.sweepGradient:
        return SweepGradient(colors: [Colors.blue, Colors.red]);
      case EBG.radialGradient:
        return RadialGradient(colors: [Colors.blue, Colors.red]);
      default:
        return null;
    }
  }
}

enum EBG { color, image, linearGradient, radialGradient, sweepGradient }
enum ERadius { none, round, circle }

import 'package:flutter/material.dart';
import 'package:mywidget/core/constans.dart';
import 'package:mywidget/model/router.dart';
import 'package:mywidget/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  static BuildContext get context => navKey.currentState.overlay.context;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: MyApp.navKey,
      title: kAppName,
      theme: primaryTheme,
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

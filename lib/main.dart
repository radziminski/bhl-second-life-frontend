import 'package:SecondLife/constants.dart';
import 'package:SecondLife/routes.dart';
import 'package:SecondLife/screens/offers_screen.dart';
import 'package:SecondLife/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SecondLifeApp());
}

class SecondLifeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTitle,
      theme: appTheme,
      initialRoute: kHomeRoute,
      routes: appRoutes,
    );
  }
}

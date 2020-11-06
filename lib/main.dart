import 'package:SecondLife/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SecondLifeApp());
}

class SecondLifeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(),
    );
  }
}

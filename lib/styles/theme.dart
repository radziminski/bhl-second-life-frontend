import 'package:flutter/material.dart';

const kColors = {
  'primary': Color(0xFF222831),
  'primaryLight': Color(0xFF31314B),
  'background': Colors.white,
  'text': Colors.black,
};

ThemeData appTheme = ThemeData(
  primaryColor: kColors['primary'],
  accentColor: kColors['primaryLight'],
  canvasColor: kColors['background'],
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

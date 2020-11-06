import 'package:SecondLife/widgets/DefaultAppBar.dart';
import 'package:SecondLife/widgets/DefaultBottomNavBar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar(context, 'Settings'),
      bottomNavigationBar: buildDefaultBottomNavBar(context),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}

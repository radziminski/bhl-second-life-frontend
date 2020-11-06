import 'package:SecondLife/constants.dart';
import 'package:SecondLife/widgets/DefaultAppBar.dart';
import 'package:SecondLife/widgets/OffersSwiper.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar(kTitle),
      body: SafeArea(
        child: OffersSwiper(),
      ),
    );
  }
}

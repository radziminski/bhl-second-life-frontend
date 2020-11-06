import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  OfferCard({this.url, this.title, this.subTitle});

  final String url;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        child: Image.network(
          url,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}

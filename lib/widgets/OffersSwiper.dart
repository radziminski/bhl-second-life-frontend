import 'package:flutter/material.dart';

const url =
    'https://www.peppermillinteriors.com/image/catalog/products/chr-403-ra-vintage-style-armchair/vintage-style-armchair.jpg';

class OffersSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          height: double.infinity,
          child: FittedBox(
            child: Image.network(
              url,
              height: 700,
            ),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 30.0,
          child: FlatButton(
            shape: CircleBorder(),
            color: Colors.blue,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.plus_one,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

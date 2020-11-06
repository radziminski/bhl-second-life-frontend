import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

const mockUrls = [
  'https://www.peppermillinteriors.com/image/catalog/products/chr-403-ra-vintage-style-armchair/vintage-style-armchair.jpg',
  'https://previews.123rf.com/images/technobulka/technobulka1712/technobulka171200038/91301121-red-vintage-sprint-scooter-oldschool.jpg',
  'https://img1.elektrobike-online.com/UB-Wattitud-Old-Timer-Old-School-E-Bike-gallerySquareTeaser-990bd9ef-1573817.jpg',
];

class OffersSwiper extends StatefulWidget {
  @override
  _OffersSwiperState createState() => _OffersSwiperState();
}

class _OffersSwiperState extends State<OffersSwiper> {
  String currUrl = mockUrls[0];
  int currOffer = 0;

  void _nextOffer() {
    setState(() {
      currOffer++;
      if (currOffer == mockUrls.length) currOffer = 0;
      print(currOffer);
      currUrl = mockUrls[currOffer];
    });
  }

  void _prevOffer() {
    setState(() {
      currOffer--;
      if (currOffer < 0) currOffer = mockUrls.length - 1;
      print(currOffer);
      currUrl = mockUrls[currOffer];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: _buildAllOffersCarusel(),
    );
  }

  Widget _buildAllOffersCarusel() {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.0,
        height: double.infinity,
        scrollDirection: Axis.vertical,
      ),
      items: [1, 2, 3].map((_) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(color: Colors.grey),
              child: Stack(
                children: [
                  Center(
                    child: _buildCurrOfferCarusel(),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 80.0,
                    child: _buildIconButton(
                      context,
                      icon: Icons.favorite,
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 80.0,
                    child: _buildIconButton(
                      context,
                      icon: Icons.delete,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildCurrOfferCarusel() {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        viewportFraction: 0.80,
      ),
      items: mockUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey),
              child: Container(
                child: FittedBox(
                  child: Image.network(
                    url,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildIconButton(context, {IconData icon, Function onPressed}) {
    return FlatButton(
      shape: CircleBorder(),
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icon,
          size: 32.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

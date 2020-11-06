import 'dart:ui';

import 'package:SecondLife/widgets/OfferCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

const mockUrls = [
  'https://www.peppermillinteriors.com/image/catalog/products/chr-403-ra-vintage-style-armchair/vintage-style-armchair.jpg',
  'https://previews.123rf.com/images/technobulka/technobulka1712/technobulka171200038/91301121-red-vintage-sprint-scooter-oldschool.jpg',
  'https://img1.elektrobike-online.com/UB-Wattitud-Old-Timer-Old-School-E-Bike-gallerySquareTeaser-990bd9ef-1573817.jpg',
];

const mockImages = [
  [
    'https://www.meblewojcik.com.pl/gfx/meblewojcik/userfiles/kolekcje/cortina/mw_cortina_nowosci.jpg',
    'https://images.all-free-download.com/images/graphicthumb/modern_living_room_boutique_picture_167584.jpg',
    'https://images.all-free-download.com/images/graphiclarge/fine_furniture_sofa_02_hd_pictures_167796.jpg',
    'https://images.all-free-download.com/images/graphiclarge/04_hd_pictures_167779.jpg',
    'https://images.all-free-download.com/images/graphiclarge/interior_design_and_creative_sofa_01_hd_pictures_167791.jpg'
  ],
  [
    'https://images.all-free-download.com/images/graphiclarge/keyboard_computer_electronics_264654.jpg',
    'https://images.all-free-download.com/images/graphiclarge/computer_mouse_201790.jpg',
    'https://images.all-free-download.com/images/graphiclarge/computer_monitor_isolated_195430.jpg',
    'https://images.all-free-download.com/images/graphiclarge/old_tv_hd_picture_5_168677.jpg',
    'https://images.all-free-download.com/images/graphiclarge/apple_watch_563737.jpg'
  ],
  [
    'https://images.all-free-download.com/images/graphiclarge/acoustic_guitar_184807.jpg',
    'https://images.all-free-download.com/images/graphiclarge/wireless_microphone_185539.jpg',
    'https://images.all-free-download.com/images/graphiclarge/violin_188018.jpg'
  ]
];

class OffersSwiper extends StatefulWidget {
  @override
  _OffersSwiperState createState() => _OffersSwiperState();
}

class _OffersSwiperState extends State<OffersSwiper> {
  String currUrl = mockUrls[0];
  int currOffer = 0;

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
      items: mockImages.map((imageList) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: _buildCurrOfferCarusel(imageList),
                  ),
                  Positioned(
                    bottom: 25,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 46.0,
                      child: Text(
                        'Sample Title',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    right: 10.0,
                    child: _buildIconButton(
                      context,
                      icon: Icons.favorite,
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    right: 80.0,
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

  Widget _buildCurrOfferCarusel(List<String> urls) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        viewportFraction: 1,
      ),
      items: urls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: OfferCard(url: url),
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

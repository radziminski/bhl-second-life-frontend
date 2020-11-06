import 'dart:ui';

import 'package:SecondLife/widgets/OfferCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const mockImages = [
  [
    'https://www.peppermillinteriors.com/image/catalog/products/chr-403-ra-vintage-style-armchair/vintage-style-armchair.jpg',
    'https://previews.123rf.com/images/technobulka/technobulka1712/technobulka171200038/91301121-red-vintage-sprint-scooter-oldschool.jpg',
    'https://img1.elektrobike-online.com/UB-Wattitud-Old-Timer-Old-School-E-Bike-gallerySquareTeaser-990bd9ef-1573817.jpg',
  ],
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          _buildAllOffersCarusel(),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 0.0,
                bottom: 40.0,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  // color: Theme.of(context).canvasColor,
                  // // borderRadius: BorderRadius.only(
                  // //   topLeft: Radius.circular(50.0),
                  // //   topRight: Radius.circular(50.0),
                  // // ),
                  // gradient: LinearGradient(
                  //   begin: FractionalOffset.topCenter,
                  //   end: FractionalOffset.bottomCenter,
                  //   colors: [
                  //     Colors.grey.withOpacity(0.0),
                  //     Colors.white.withOpacity(0.8),
                  //   ],
                  //   stops: [0.0, 1.0],
                  // ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.2),
                  //     spreadRadius: 2,
                  //     blurRadius: 9,
                  //     offset: Offset(0, -3),
                  //   )
                  // ],
                  ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIconButton(
                      context,
                      onPressed: () {},
                      icon: Icons.close,
                      iconColor: Colors.red,
                      size: 28,
                    ),
                    _buildIconButton(
                      context,
                      onPressed: () {},
                      icon: Icons.favorite,
                      iconColor: Colors.white,
                      color: Color(0xFFFF6D6D),
                      size: 40,
                    ),
                    _buildIconButton(
                      context,
                      onPressed: () {},
                      icon: Icons.skip_next,
                      iconColor: Colors.green,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Center(
                    child: _buildCurrOfferCarusel(imageList),
                  ),
                  // Positioned(
                  //   top: 30,
                  //   left: 36,
                  //   child: Container(
                  //     height: 46.0,
                  //     child: Text(
                  //       'Sample Title',
                  //       style: GoogleFonts.poppins(
                  //         fontWeight: FontWeight.bold,
                  //         textStyle: TextStyle(
                  //           color: Colors.black87,
                  //           fontSize: 22.0,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
              padding: const EdgeInsets.all(18.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
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

  Widget _buildIconButton(
    context, {
    IconData icon,
    Function onPressed,
    Color iconColor = Colors.white,
    Color color = Colors.white,
    double size = 32,
  }) {
    return FlatButton(
      color: color,
      shape: CircleBorder(),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icon,
          size: size,
          color: iconColor,
        ),
      ),
    );
  }
}

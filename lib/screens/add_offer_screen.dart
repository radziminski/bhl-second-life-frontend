import 'package:SecondLife/widgets/BigButton.dart';
import 'package:SecondLife/widgets/DefaultAppBar.dart';
import 'package:SecondLife/widgets/DefaultBottomNavBar.dart';
import 'package:SecondLife/widgets/TextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

const kPriceValues = [
  'super cheap',
  'cheap',
  'custom',
  'expensive',
  'super expensive'
];

const kCatValues = [
  'sport',
  'electronics',
  'furnitures',
  'toys',
  'other',
];

class AddOfferScreen extends StatefulWidget {
  @override
  _AddOfferScreenState createState() => _AddOfferScreenState();
}

class _AddOfferScreenState extends State<AddOfferScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String selectedPriceCat = kPriceValues[0];
  String selectedTypeCat = kCatValues[0];
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar(context, 'Add New Offer'),
      bottomNavigationBar: buildDefaultBottomNavBar(context, 1),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.82,
            child: ListView(
              children: [
                SizedBox(height: 30),
                TextInput(titleController, 'Offer Title'),
                SizedBox(height: 30),
                TextInput(descriptionController, 'Offer Description'),
                SizedBox(height: 50),
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Price category',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10),
                          DropdownButton<String>(
                            value: selectedPriceCat,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 0,
                            style: TextStyle(color: Colors.white),
                            underline: Container(
                              height: 0,
                              color: Colors.white,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                selectedPriceCat = newValue;
                              });
                            },
                            items: kPriceValues
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              'Item category',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10),
                          DropdownButton<String>(
                            value: selectedTypeCat,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 0,
                            style: TextStyle(color: Colors.white),
                            underline: Container(
                              height: 0,
                              color: Colors.white,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                selectedTypeCat = newValue;
                                print(newValue);
                              });
                            },
                            items: kCatValues
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        getImage();
                      },
                      icon: Icon(
                        CupertinoIcons.add_circled,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                  ),
                ),
                Container(height: 70),
                BigButton('Send!', () {}),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

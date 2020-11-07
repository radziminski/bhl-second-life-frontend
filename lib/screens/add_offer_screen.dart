import 'package:SecondLife/widgets/BigButton.dart';
import 'package:SecondLife/widgets/DefaultAppBar.dart';
import 'package:SecondLife/widgets/DefaultBottomNavBar.dart';
import 'package:SecondLife/widgets/TextInput.dart';
import 'package:flutter/material.dart';

class AddOfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar: buildDefaultAppBar(context, 'Add New Offer'),
      bottomNavigationBar: buildDefaultBottomNavBar(context, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            TextInput(titleController, 'Offer Title'),
            SizedBox(height: 30),
            TextInput(descriptionController, 'Offer Description'),
            Expanded(child: Container()),
            BigButton('Send!', () {}),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

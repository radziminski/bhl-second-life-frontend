import 'package:SecondLife/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 30.0,
        ),
        child: Column(
          children: [
            Container(
              child: Text('hello'),
            ),
            Expanded(
              child: Container(),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, kHomeRoute);
              },
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 36.0,
                ),
                child: Text(
                  'Sign in',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

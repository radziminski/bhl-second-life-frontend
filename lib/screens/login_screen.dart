import 'package:SecondLife/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    'Welcome to Second Life!',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Type in your username to proceed.',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.065),
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.09), width: 1),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.3),
                        ),
                        hintText: 'Enter your Username',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FlatButton(
                minWidth: MediaQuery.of(context).size.width * 0.8,
                onPressed: () {
                  Navigator.pushNamed(context, kHomeRoute);
                },
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 96.0,
                  ),
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
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

import 'package:SecondLife/widgets/Chat.dart';
import 'package:SecondLife/widgets/DefaultAppBar.dart';
import 'package:SecondLife/widgets/DefaultBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDefaultAppBar(context, 'Matched trades'),
      bottomNavigationBar: buildDefaultBottomNavBar(context),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Chat(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                              ),
                              hintText: 'Enter a message'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                      child: IconButton(
                        icon: Icon(
                          CupertinoIcons.arrow_right_circle_fill,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}

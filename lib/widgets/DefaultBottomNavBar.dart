import 'package:SecondLife/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BottomNavigationBar buildDefaultBottomNavBar(context) {
  return BottomNavigationBar(
    fixedColor: Colors.white,
    unselectedItemColor: Colors.white.withOpacity(0.7),
    onTap: (selected) {
      switch (selected) {
        case 0:
          return Navigator.pushNamed(context, kOffersRoute);
        case 1:
          return Navigator.pushNamed(context, kMessagesRoute);
        case 2:
          return Navigator.pushNamed(context, kSettingsRoute);
        default:
          return Navigator.pushNamed(context, kHomeRoute);
      }
    },
    items: [
      BottomNavigationBarItem(
        label: '',
        icon: Icon(CupertinoIcons.home),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(CupertinoIcons.chat_bubble),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(CupertinoIcons.settings),
      ),
    ],
  );
}

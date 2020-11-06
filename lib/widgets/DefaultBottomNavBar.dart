import 'package:flutter/material.dart';

BottomNavigationBar buildDefaultBottomNavBar() {
  return BottomNavigationBar(
    fixedColor: Colors.white,
    items: [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'Matches',
        icon: Icon(Icons.connect_without_contact),
      ),
      BottomNavigationBarItem(
        label: 'Settings',
        icon: Icon(Icons.settings),
      ),
    ],
  );
}

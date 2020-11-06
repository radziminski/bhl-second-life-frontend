import 'package:SecondLife/constants.dart';
import 'package:SecondLife/screens/loading_screen.dart';
import 'package:SecondLife/screens/login_screen.dart';
import 'package:SecondLife/screens/matches_screen.dart';
import 'package:SecondLife/screens/offers_screen.dart';
import 'package:SecondLife/screens/settings_screen.dart';

final appRoutes = {
  kHomeRoute: (context) => OffersScreen(),
  kOffersRoute: (context) => OffersScreen(),
  kLoadingRoute: (context) => LoadingScreen(),
  kMessagesRoute: (context) => MessagesScreen(),
  kLoginRoute: (context) => LoginScreen(),
  kSettingsRoute: (context) => SettingsScreen(),
};

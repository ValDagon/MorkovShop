import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

class LandingPage extends StatelessWidget {
  static String routeName = "/landing";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = true;

    return isLoggedIn ? HomeScreen() : SplashScreen();
  }
}

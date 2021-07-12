import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:trippy/screens/home/home.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Curve curve;
  late PageTransition pageTransition;
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        centered: true,
        splashIconSize: 100,
        splash: "images/splash2.png",
        animationDuration: Duration(seconds: 2),
        splashTransition: SplashTransition.scaleTransition,
        curve: curve = Curves.easeInOutBack,
        duration: 1000,
        nextScreen: Home());
  }
}

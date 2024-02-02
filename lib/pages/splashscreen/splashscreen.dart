import 'dart:async';
import 'package:beaja/common/constants/styles/images.dart';
import 'package:beaja/pages/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  SplashScreenPageState createState() => SplashScreenPageState();
}

class SplashScreenPageState extends State<SplashScreenPage> {
  bool isLogged = false;
  bool isExpiredToken = false;

  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var splashDuration = const Duration(seconds: 2);

    return Timer(splashDuration, () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const OnboardingPage();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.splashScreenImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

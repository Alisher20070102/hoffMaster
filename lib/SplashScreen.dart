import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:hoff_master/Home_Page.dart';

import 'Home_Page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageSelectionScreen(),
                )));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Image.asset(
          'assets/flog/logoHoff.png', // Rasm fayl manzilingizni kiriting
          // fit: BoxFit.cover, // Rasmni joylashishi
        ),
      ),
    );
  }
}

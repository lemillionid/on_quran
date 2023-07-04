import 'dart:async';

import 'package:flutter/material.dart';
import 'package:on_quran_uiux/routes/routes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, RouteGenerator.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Center(
            child: SizedBox(
          height: 80,
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        )),
      ),
    );
  }
}

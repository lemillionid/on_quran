import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
      Navigator.pushReplacementNamed(context, RouteGenerator.signIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextLiquidFill(
                text: "onQuran",
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontFamily: "ArabicCaligraphy",
                  fontSize: 78,
                ),
                boxHeight: 120,
                loadDuration: const Duration(seconds: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

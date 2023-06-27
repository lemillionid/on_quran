import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';
import 'package:on_quran_uiux/widget/appbar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const OnQuranAB(),
              const SizedBox(height: 10),
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      primaryColor,
                      secondaryColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/masjid-pogung-dalangan-pEHjWZFhyN8-unsplash.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    opacity: 0.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';
import 'package:on_quran_uiux/widget/appbar.dart';
import 'package:on_quran_uiux/widget/ayahotd_card.dart';
import 'package:on_quran_uiux/widget/calltoaction/cta_donasi.dart';
import 'package:on_quran_uiux/widget/detail_card.dart';

import '../../../widget/features_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final double cardHeight = 280;

  @override
  Widget build(BuildContext context) {
    final top = cardHeight - 200 / 3.3;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/starbg.png'),
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
            padding: kPaddingOnQuran,
            child: Column(
              children: [
                const OnQuranAB(),
                const SizedBox(height: 10),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    const DetailCard(),
                    Positioned(
                      top: top,
                      child: const AyahOtdCard(),
                    )
                  ],
                ),
                const SizedBox(height: 100),
                const FeaturesCard(),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Kajian Trending',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 0.1,
                                    blurRadius: 8,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: const Column(
                                children: [],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const CtaDonasi(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

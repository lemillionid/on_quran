import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';
import 'package:on_quran_uiux/widget/appbar.dart';
import 'package:on_quran_uiux/widget/ayahotd_card.dart';
import 'package:on_quran_uiux/widget/calltoaction/cta_donasi.dart';
import 'package:on_quran_uiux/widget/card/kajian_card.dart';
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
                const KajianCard(),
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

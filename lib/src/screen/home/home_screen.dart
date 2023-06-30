import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';
import 'package:on_quran_uiux/widget/appbar.dart';
import 'package:on_quran_uiux/widget/card/ayahotd_card.dart';
import 'package:on_quran_uiux/widget/card/detail_card.dart';

import '../../../widget/card/features_card.dart';

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
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

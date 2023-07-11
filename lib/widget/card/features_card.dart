import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/features/asmaul_husna/allah_names.dart';
import 'package:on_quran_uiux/src/features/duas/doa.dart';
import 'package:on_quran_uiux/src/features/hadith/hadits.dart';
import 'package:on_quran_uiux/src/features/praytime/pray_menu.dart';
import 'package:on_quran_uiux/src/features/qiblah/qiblah_menu.dart';
import 'package:on_quran_uiux/src/features/quran/quran_madinah.dart';

class FeaturesCard extends ConsumerStatefulWidget {
  const FeaturesCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FeaturesCardState();
}

class _FeaturesCardState extends ConsumerState<FeaturesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      color: Colors.transparent,
      child: const Column(
        children: [
          Row(
            children: [
              Text(
                'Our Features',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [MenuQuran(), Spacer(), MenuHadits()],
          ),
          SizedBox(height: 10),
          Row(
            children: [MenuDoa(), SizedBox(width: 10), MenuAsmaulHusna()],
          ),
          SizedBox(height: 10),
          Row(
            children: [MenuPray(), SizedBox(width: 10), MenuQiblah()],
          )
        ],
      ),
    );
  }
}

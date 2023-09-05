import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_quran_uiux/src/features/quran/quran_madinah/modal/q_madinah_dialog.dart';
import 'package:on_quran_uiux/src/features/quran/quran_madinah/tab/q_madinah_tab.dart';
import 'package:on_quran_uiux/src/features/quran/quran_screen.dart';

import '../../../core/util/constants.dart';

class QuranMadinah extends StatefulWidget {
  const QuranMadinah({super.key});

  @override
  State<QuranMadinah> createState() => _QuranMadinahState();
}

class _QuranMadinahState extends State<QuranMadinah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/aback.svg',
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const QmadinahDialog();
              },
            );
          },
          child: QTitleBar(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
            iconSize: 28,
            color: Theme.of(context).iconTheme.color,
          ),
        ],
      ),
      body: const QuranScreen(),
      bottomNavigationBar: const QMadinahTab(),
    );
  }

  Stack QTitleBar() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            'Al-Baqarah',
            style: TextStyle(
              fontFamily: 'OnQuran',
              fontSize: 28,
              color: Colors.blue.shade900,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 5,
              ),
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Text(
                '1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 10,
              ),
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Text(
                'Halaman 3, Juz 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

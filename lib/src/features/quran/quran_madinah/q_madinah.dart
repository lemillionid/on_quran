import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_quran_uiux/src/features/quran/quran_madinah/modal/q_madinah_dialog.dart';
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
    double displayWidth = MediaQuery.of(context).size.width;

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
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(displayWidth * .05),
          height: displayWidth * .155,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.3),
            //     blurRadius: 20,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              ),
              Container(
                width: displayWidth * .65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      primaryColor,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const Text(
                      'Mishari Rashid Al-Afasy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.repeat_rounded),
              ),
            ],
          ),
        ));
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

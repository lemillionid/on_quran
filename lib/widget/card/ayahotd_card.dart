import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AyahOtdCard extends ConsumerStatefulWidget {
  const AyahOtdCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AyahOtdCardState();
}

class _AyahOtdCardState extends ConsumerState<AyahOtdCard> {
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // Warna bayangan
            spreadRadius: 2, // Jarak penyebaran bayangan
            blurRadius: 5, // Radius blur bayangan
            offset: const Offset(0, 3), // Posisi bayangan (x, y)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/icons/quran.png'),
                  height: 35,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ayah Of Day',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                        fontSize: 16,
                        color: Colors.purple.shade900,
                      ),
                    ),
                    const Text(
                      'Al-Insyira : Ayah 08',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(color: Colors.grey, width: 0.2))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _isSaved = !_isSaved;
                            });
                          },
                          child: Icon(
                              _isSaved
                                  ? Icons.bookmark_border_rounded
                                  : Icons.bookmark_add_rounded,
                              size: 25,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.share_outlined,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 0.3),
                ),
              ),
              padding: const EdgeInsets.all(7),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'وَإِلَىٰ رَبِّكَ فَارْغَبْ ٨',
                    style: TextStyle(
                      fontFamily: 'QuranFont',
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '"dan hanya kepada Tuhanmulah hendaknya kamu berharap." - (8)',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

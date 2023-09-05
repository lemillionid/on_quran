import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_quran_uiux/routes/routes_screen.dart';

class ModalQuran extends StatelessWidget {
  const ModalQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 700,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Icon(
            Icons.maximize_rounded,
            color: Colors.black,
            size: 30,
          ),
          Text(
            'AL QUR\'AN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple.shade900,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //Baris Pertama
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(
                            'assets/icons/QuranIcon2.svg',
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              RouteGenerator.generateRoute(
                                const RouteSettings(
                                    name: RouteGenerator.qMadinah),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Madinah',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/QuranIconID.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Indonesia',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/QuranIconPK.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Per Kata ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/QuranIconPA.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Per Ayat ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //Baris Kedua
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/QuranIconMT.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text(
                              'Madinah',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Tajwid',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/QuranIconIT.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text(
                              'Indonesia',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Tajwid',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/QuranIconPKT.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text(
                              'Per Kata',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Tajwid',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          child: const Image(
                            image: AssetImage('assets/icons/DonasiQuran.png'),
                            width: 75,
                            height: 75,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text(
                              'Donasi',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Mushaf',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 100,
                            width: 150,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-1, -1),
                                ),
                              ],
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/aqwam-jembatan-ilmu-jTvT1OiBVNk-unsplash.jpg'),
                                fit: BoxFit.cover,
                                opacity: 0.2,
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tilawahku',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Terdapat 4 Surat',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 15,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 100,
                            width: 150,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-1, -1),
                                ),
                              ],
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/aqwam-jembatan-ilmu-jTvT1OiBVNk-unsplash.jpg'),
                                fit: BoxFit.cover,
                                opacity: 0.2,
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Ayat Pilihan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '5 Kategori',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 15,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 100,
                            width: 150,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(-1, -1),
                                ),
                              ],
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/aqwam-jembatan-ilmu-jTvT1OiBVNk-unsplash.jpg'),
                                fit: BoxFit.cover,
                                opacity: 0.2,
                              ),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Khataman Al-Quran',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Mulai khataman',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 15,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

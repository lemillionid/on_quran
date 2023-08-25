import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ModalQuran extends StatelessWidget {
  const ModalQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 700,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.blueAccent.shade700,
      ),
      child: Column(
        children: [
          const Icon(
            Icons.maximize_rounded,
            color: Colors.grey,
            size: 30,
          ),
          const Text(
            'AL QUR\'AN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Madinah',
                          style: TextStyle(
                            color: Colors.white,
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
                            color: Colors.white,
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
                            color: Colors.white,
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
                            color: Colors.white,
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
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Tajwid',
                              style: TextStyle(
                                color: Colors.white,
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
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Tajwid',
                              style: TextStyle(
                                color: Colors.white,
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
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Tajwid',
                              style: TextStyle(
                                color: Colors.white,
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
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Mushaf',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

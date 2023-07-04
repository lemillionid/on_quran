import 'package:flutter/material.dart';

import '../../src/core/util/constants.dart';

class CtaDonasi extends StatelessWidget {
  const CtaDonasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Infaq & Sodaqoh',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(15),
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primaryColor,
                  secondaryColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(17),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/p/AF1QipMDnfwoVDEJTm4wZ3tQ9YpbKEfJv8beJoRGYWvX=s1360-w1360-h1020'),
                fit: BoxFit.cover,
                opacity: 0.3,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'YUK BANTU',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  'PEMBANGUNAN PESANTREN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'SUNNAH',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Wujudkan terciptanya Generasi Qur\'ani',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  '& berakhlakul karimah',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue.shade700,
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'DONASI SEKARANG',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

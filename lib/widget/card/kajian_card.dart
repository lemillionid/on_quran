import 'package:flutter/material.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';

class KajianCard extends StatefulWidget {
  const KajianCard({super.key});

  @override
  State<KajianCard> createState() => _KajianCardState();
}

class _KajianCardState extends State<KajianCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  width: 330,
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
                    image: DecorationImage(
                      image: AssetImage('assets/images/thumbnail.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.7,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        primaryColor,
                        secondaryColor,
                      ],
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_fill_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}

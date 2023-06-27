import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/core/util/constants.dart';

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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Our Features',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 200,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        primaryColor,
                        secondaryColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/icons/quran-2.png'),
                        height: 30,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quran Madinah',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Mushaf View',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Ink(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.transparent),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 110,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/icons/quran-3.png'),
                          height: 30,
                        ),
                        Spacer(),
                        Text(
                          'Hadits',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

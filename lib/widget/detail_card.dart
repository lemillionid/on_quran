import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/core/util/constants.dart';

class DetailCard extends ConsumerStatefulWidget {
  const DetailCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailCardState();
}

class _DetailCardState extends ConsumerState<DetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            secondaryColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(17)),
        image: DecorationImage(
          image: AssetImage(
              'assets/images/aqwam-jembatan-ilmu-jTvT1OiBVNk-unsplash.jpg'),
          fit: BoxFit.fitWidth,
          opacity: 0.3,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selasa, 27 Juni 2023',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '8 Dzulhijjah 1444H',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.notification_important_rounded,
                  color: Colors.white,
                  size: 32,
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Maghrib',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '18:05',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.bold,
                        fontSize: 46,
                      ),
                    ),
                    Text(
                      'pm',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Minutes today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '62',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ayah today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '79',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This month',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '531',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

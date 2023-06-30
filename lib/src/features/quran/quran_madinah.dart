// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../widget/navbar/bottom_navbar.dart';
import '../../core/util/constants.dart';

class MenuQuran extends StatelessWidget {
  const MenuQuran({super.key});

  @override
  Widget build(BuildContext context) {
    // final navigationKey = GlobalKey<CurvedNavigationBarState>();

    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const CurvedBotNavbar()));
        // final navigationState = navigationKey.currentState;

        // navigationState?.setPage(2);
      },
      child: InkWell(
        highlightColor: Colors.grey.withOpacity(0.4),
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
    );
  }
}

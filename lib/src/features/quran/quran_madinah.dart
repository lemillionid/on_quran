import 'package:flutter/material.dart';

import '../../core/util/constants.dart';

class MenuQuran extends StatefulWidget {
  const MenuQuran({super.key});

  @override
  State<MenuQuran> createState() => _MenuQuranState();
}

class _MenuQuranState extends State<MenuQuran> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ),
              );
            });
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
                    'Baca Quran',
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

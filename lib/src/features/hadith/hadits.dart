import 'package:flutter/material.dart';

import '../../core/util/constants.dart';

class MenuHadits extends StatelessWidget {
  const MenuHadits({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle, color: Colors.transparent),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 80,
          width: 120,
          decoration: const BoxDecoration(
            color: unselectedButtonColor,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hadits',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'See Hadits',
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

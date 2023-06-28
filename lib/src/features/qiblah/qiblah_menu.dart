import 'package:flutter/material.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';

class MenuQiblah extends StatelessWidget {
  const MenuQiblah({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/icons/qibla.png'),
                height: 30,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kiblat",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Qiblah',
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

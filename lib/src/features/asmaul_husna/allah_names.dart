import 'package:flutter/material.dart';

import '../../core/util/constants.dart';

class MenuAsmaulHusna extends StatelessWidget {
  const MenuAsmaulHusna({super.key});

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
          width: 200,
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
                image: AssetImage('assets/icons/99.png'),
                height: 30,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Asmaul Husna",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '99 Allah names',
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

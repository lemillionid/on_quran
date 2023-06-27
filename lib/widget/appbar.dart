import 'package:flutter/material.dart';

class OnQuranAB extends StatelessWidget {
  const OnQuranAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          iconSize: 30,
        ),
        const Text(
          'Home',
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
          iconSize: 30,
        ),
      ],
    );
  }
}

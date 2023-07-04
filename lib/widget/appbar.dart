import 'package:flutter/material.dart';

class OnQuranAB extends StatefulWidget {
  const OnQuranAB({super.key});

  @override
  State<OnQuranAB> createState() => _OnQuranABState();
}

class _OnQuranABState extends State<OnQuranAB> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'onQuran',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'OnQuran',
            color: Colors.purple,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 60,
          height: 25,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.blueAccent.shade700,
          ),
          child: const Text(
            'BETA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

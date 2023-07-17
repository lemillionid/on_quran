import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/util/constants.dart';

class MotivationCardUser extends ConsumerStatefulWidget {
  const MotivationCardUser({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MotivationCardUserState();
}

class _MotivationCardUserState extends ConsumerState<MotivationCardUser> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                primaryColor,
                secondaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(17),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/mandala.png'),
              fit: BoxFit.cover,
              opacity: 0.3,
            ),
          ),
          alignment: Alignment.center,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'وَاِلٰى رَبِّكَ فَارْغَبْ',
                style: TextStyle(
                  fontFamily: 'QuranFont',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Text(
                'dan hanya kepada Tuhanmulah engkau berharap.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Q.S Al - Insyirah : 8',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 120,
          height: 25,
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17),
              bottomRight: Radius.circular(17),
            ),
          ),
          alignment: Alignment.center,
          child: const Text(
            'Motivasi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.deepPurple,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 2,
          child: Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(17),
                bottomLeft: Radius.circular(17),
              ),
            ),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.edit_note_rounded,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

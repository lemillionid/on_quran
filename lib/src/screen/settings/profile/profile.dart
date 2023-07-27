import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            maxRadius: 30.0,
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/user.jpg'),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Abdurrahman',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                  const SizedBox(width: 5),
                  Badge(
                    badgeContent:
                        const Icon(Icons.check, color: Colors.white, size: 8),
                    badgeStyle: BadgeStyle(
                        shape: BadgeShape.instagram,
                        badgeColor: Colors.blueAccent.shade700),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(17),
                    ),
                    color: Colors.amber.shade900),
                child: const Text(
                  'PELAJAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.grey.shade400,
              //   width: 0.4,
              // ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.5, 1),
                  blurRadius: 1,
                )
              ],
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.edit_rounded,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

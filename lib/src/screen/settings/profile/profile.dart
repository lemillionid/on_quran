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
            maxRadius: 40.0,
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            backgroundImage: NetworkImage(
                'https://scontent.fplm4-1.fna.fbcdn.net/v/t39.30808-6/324578337_541403194681325_1616581128881804731_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFvH5UsPmfVQ3s5OfspNAL-6L-L13ylJdjov4vXfKUl2P8Dxd9NP6e650jWou6jcuxN1Bh_OvpUbAyzTkgH0j8y&_nc_ohc=JvR6FzFT6Q0AX_Plmkx&_nc_ht=scontent.fplm4-1.fna&oh=00_AfC-1wnfR6SJYVovcX3AP6nPDVqT6OKjDCxf6UbCqmatHA&oe=64AC5208'),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Badge(
                badgeContent:
                    const Icon(Icons.check, color: Colors.white, size: 8),
                badgeStyle: BadgeStyle(
                    shape: BadgeShape.instagram,
                    badgeColor: Colors.blueAccent.shade700),
                position: BadgePosition.custom(start: 120),
                child: const Text(
                  'Abdurrahman',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Tajawal',
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(5),
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(17),
                    ),
                    color: Colors.amber.shade600),
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
                Icons.mode_edit_outline_rounded,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

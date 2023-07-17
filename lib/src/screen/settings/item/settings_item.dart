import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingItem extends ConsumerStatefulWidget {
  const SettingItem({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingItemState();
}

class _SettingItemState extends ConsumerState<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'Aktivitas Tilawah',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.local_activity_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Riwayat Kelas',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.abc),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Progres Belajar',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.star_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Security',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.private_connectivity_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Mode Malam',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.dark_mode_rounded),
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        ListTile(
          title: const Text(
            'Bantuan',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.live_help_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Kebijakan Privasi',
            style: TextStyle(
              fontFamily: 'Tajawal',
            ),
          ),
          leading: const Icon(Icons.privacy_tip_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
          onTap: () {},
        ),
        const SizedBox(height: 20),
        SizedBox(
          key: GlobalKey(debugLabel: 'logoutbutton'),
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
            ),
            onPressed: () {},
            child: const Text(
              'Log Out',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

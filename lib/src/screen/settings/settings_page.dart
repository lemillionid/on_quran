import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/src/core/util/constants.dart';
import 'package:on_quran_uiux/src/screen/settings/card/motiv_card.dart';
import 'package:on_quran_uiux/src/screen/settings/item/settings_item.dart';
import 'package:on_quran_uiux/src/screen/settings/profile/profile.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: kPaddingOnQuran,
        child: Column(
          children: [
            UserProfile(),
            SizedBox(height: 20),
            MotivationCardUser(),
            SizedBox(height: 20),
            SettingItem(),
          ],
        ),
      )),
    );
  }
}

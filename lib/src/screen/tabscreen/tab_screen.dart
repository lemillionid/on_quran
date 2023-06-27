import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/widget/bottombar_screen.dart';

class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabScreenState();
}

class _TabScreenState extends ConsumerState<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomBarMenu(),
    );
  }
}

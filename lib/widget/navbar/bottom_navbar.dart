import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/routes/routes_screen.dart';
import 'package:on_quran_uiux/widget/navbar/bottom_navbar_items.dart';

class CurvedBotNavbar extends ConsumerStatefulWidget {
  const CurvedBotNavbar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CurvedBotNavbarState();
}

class _CurvedBotNavbarState extends ConsumerState<CurvedBotNavbar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int _setIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: SafeArea(
        top: false,
        child: ClipRRect(
          child: Scaffold(
            body: NavigationPages.pages[_setIndex]['page'],
            bottomNavigationBar: CurvedNavigationBar(
              key: navigationKey,
              buttonBackgroundColor: Colors.purple,
              backgroundColor: Colors.transparent,
              color: Colors.deepPurple,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
              height: 50,
              index: _setIndex,
              items: navigationItems,
              onTap: (index) => setState(() => _setIndex = index),
            ),
          ),
        ),
      ),
    );
  }
}

//Source : https://www.youtube.com/watch?v=TX2x41h47fE

import 'package:flutter/material.dart';
import 'package:on_quran_uiux/src/features/ngaji/ngaji_page.dart';
import 'package:on_quran_uiux/src/features/qiblah/qiblah_page.dart';
import 'package:on_quran_uiux/src/features/quran/quran_page.dart';
import 'package:on_quran_uiux/src/screen/home/home_page.dart';
import 'package:on_quran_uiux/src/screen/settings/settings_page.dart';

class BottomBarMenu extends StatefulWidget {
  const BottomBarMenu({super.key});

  @override
  State<BottomBarMenu> createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': const HomePage()},
      {'page': const QiblahPage()},
      {'page': const QuranPage()},
      {'page': const NgajiPage()},
      {'page': const SettingsPage()},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight * 1,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.purple,
              elevation: 0,
              currentIndex: _selectedPageIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.window_rounded),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map_rounded),
                  label: 'Qiblah',
                ),
                BottomNavigationBarItem(
                  activeIcon: null,
                  icon: Icon(null),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.live_tv_rounded),
                  label: 'Ngaji',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          hoverElevation: 0,
          splashColor: Colors.black,
          tooltip: 'Quran',
          elevation: 4,
          child: const Icon(Icons.menu_book_rounded),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}

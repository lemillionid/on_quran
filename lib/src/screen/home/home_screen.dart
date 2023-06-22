import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text(
            'onQuran',
            style: TextStyle(
              fontFamily: 'ArabicCaligraphy',
              fontSize: 34,
            ),
          )),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: Hive.box('themedata').listenable(),
            builder: (context, box, child) {
              final isDark = box.get('isDark', defaultValue: false);
              return Switch(
                value: isDark,
                onChanged: (value) {
                  box.put('isDark', value);
                },
              );
            }),
      ),
    );
  }
}

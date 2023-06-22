import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:on_quran_uiux/routes/routes_screen.dart';
import 'package:on_quran_uiux/src/screen/splash/splash_screen.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('themedata');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ValueListenableBuilder(
        valueListenable: Hive.box('themedata').listenable(),
        builder: (context, box, child) {
          final isDark = box.get('isDark', defaultValue: false);
          return MaterialApp(
            title: 'OnQuran App',
            theme: isDark ? ThemeData.dark() : ThemeData(),
            home: const SplashScreen(),
            onGenerateRoute: RouteGenerator.generateRoute,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

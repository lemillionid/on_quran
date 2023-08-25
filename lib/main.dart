import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_quran_uiux/routes/routes_screen.dart';
import 'package:on_quran_uiux/src/core/util/theme_providers.dart';
import 'package:on_quran_uiux/src/screen/tabscreen/tab_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'OnQuran App',
      // home: const SplashScreen(),
      home: const TabScreen(),
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:on_quran_uiux/src/core/auth/login/login_page.dart';
import 'package:on_quran_uiux/src/core/auth/signup/signup_page.dart';
import 'package:on_quran_uiux/src/core/error/exceptions.dart';
import 'package:on_quran_uiux/src/screen/home/home_screen.dart';
import 'package:on_quran_uiux/src/screen/onboarding/onboarding_screen.dart';
import 'package:on_quran_uiux/src/screen/splash/splash_screen.dart';

import '../src/features/ngaji/ngaji_page.dart';
import '../src/features/qiblah/qiblah_page.dart';
import '../src/features/quran/quran_page.dart';
import '../src/screen/home/home_page.dart';
import '../src/screen/settings/settings_page.dart';

class RouteGenerator {
  static const String splash = "/splash";
  static const String onBoarding = "/onboarding";
  static const String home = "/home";
  static const String signIn = "/signin";
  static const String signUp = "/signup";

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      default:
        throw RouteException("Route not found");
    }
  }
}

class NavigationPages {
  static final List<Map<String, Widget>> pages = [
    {'page': const HomePage()},
    {'page': const QiblahPage()},
    {'page': const QuranPage()},
    {'page': const NgajiPage()},
    {'page': const SettingsPage()},
  ];
}

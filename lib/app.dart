import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payly_test/features/authentication/screens/login/login.dart';
import 'package:payly_test/features/authentication/screens/onboarding/onboarding.dart';
import 'package:payly_test/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:payly_test/navigation_menu.dart';
import 'package:payly_test/utils/theme/theme.dart';

class App extends StatelessWidget {
  final int initScreen;

  // Add initScreen to the constructor
  const App({super.key, required this.initScreen});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: YappTheme.lightTheme,
      darkTheme: YappTheme.darkTheme,
      // Use initScreen to determine the initial route
      initialRoute: initScreen == 0 ? '/onboarding' : '/login',
      getPages: [
        GetPage(name: '/', page: () => const SplashPage()),
        GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/app', page: () => const NavigationMenu()),
        // Add other routes if needed
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/bindings/binding.dart';
import 'package:project/routes/routes.dart';
import 'package:project/screens/game_screen.dart';
import 'package:project/screens/game_status.dart';
import 'package:project/screens/welcome_screen.dart';

import 'screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QuizTale',
        initialBinding: MyBindings(),
        getPages: [
          GetPage(
              name: Routes.welcomeScreenRoute,
              page: () => const WelcomeScreen()),
          GetPage(name: Routes.gameStatusRoute, page: () => const GameStatus()),
          GetPage(name: Routes.gameScreenRoute, page: () => const GameScreen()),
        ],
        home: const SplashScreen());
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: WelcomePage());
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/splash_controller.dart';
import 'package:project/util/Constans/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.splasImage,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

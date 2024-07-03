import 'package:get/get.dart';
import 'package:project/screens/welcome_screen.dart';

class SplashController extends GetxController {
  // SplashController._();

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.off(const WelcomeScreen());
      },
    );
    super.onInit();
  }
}

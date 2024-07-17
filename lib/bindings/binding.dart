import 'package:get/get.dart';
import 'package:project/controller/question_controller.dart';
import 'package:project/controller/splash_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionController());
    Get.lazyPut(() => SplashController());
  }
}

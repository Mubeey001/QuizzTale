import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class QuizzTaleDeviceUtils {
  QuizzTaleDeviceUtils._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInset = View.of(context).viewInsets;
    return viewInset.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInset = View.of(context).viewInsets;
    return viewInset.bottom != 0;
  }

  static double getScreenheight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await canLaunchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

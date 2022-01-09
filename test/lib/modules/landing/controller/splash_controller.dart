import 'dart:async';
import 'package:expansiontile/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    launchHome();
  }

  launchHome() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.toNamed(Routes.HOME);
    });
  }
}

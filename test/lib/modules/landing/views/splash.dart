import 'package:expansiontile/components/newyork_times_logo.dart';
import 'package:expansiontile/modules/landing/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: NewYorkLogoWidget(),
        ));
  }
}

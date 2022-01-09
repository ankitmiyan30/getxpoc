import 'package:get/get.dart';

import 'package:expansiontile/modules/home/bindings/home_binding.dart';
import 'package:expansiontile/modules/home/views/home_view.dart';
import 'package:expansiontile/modules/landing/bindings/splash_binding.dart';
import 'package:expansiontile/modules/landing/views/splash.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}

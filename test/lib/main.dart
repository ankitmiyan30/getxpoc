import 'package:expansiontile/network/provider/api_provider.dart';
import 'package:expansiontile/routes/app_pages.dart';
import 'package:expansiontile/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ApiProvider());
  runApp(
    ScreenUtilInit(
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppThemeDataFactory.prepareThemeData(),
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            )),
  );
}

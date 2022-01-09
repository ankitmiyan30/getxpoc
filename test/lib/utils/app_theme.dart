import 'package:expansiontile/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemeDataFactory {
  static ThemeData prepareThemeData() => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primarywhite,
        accentColor: AppColors.primarywhite,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryblack),
        backgroundColor: AppColors.primaryblack,
        buttonColor: AppColors.primaryblack,
        scaffoldBackgroundColor: AppColors.primarywhite,
        dividerColor: Colors.transparent,
        
        tabBarTheme: TabBarTheme(
            labelStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey),
        iconTheme: IconThemeData(
          color: AppColors.primaryblack,
          
        ),
      );
}

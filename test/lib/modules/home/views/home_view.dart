import 'dart:math';

import 'package:expansiontile/components/articles_list_tile_widget.dart';
import 'package:expansiontile/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        backgroundColor: Colors.limeAccent.shade700,
        title: Text(AppStrings.APP_TITLE),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.more_vert_outlined,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => controller.progressBar.isTrue
              ? Container(
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Accessing battery level using method channel",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          controller.batteryLevel.value,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.sp,
                      ),
                      ListView.builder(
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.articlsList.value!.results.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ArticlesListWidget(
                            articles:
                                controller.articlsList.value!.results[index],
                          );
                        },
                      )
                    ],
                  ),
                )
              : Container(
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
        ),
      ),
    );
  }
}

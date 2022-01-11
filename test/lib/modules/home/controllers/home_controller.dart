import 'package:expansiontile/modules/home/model/articles_response_model.dart';
import 'package:expansiontile/network/provider/api_provider.dart';
import 'package:expansiontile/utils/api_points.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ApiProvider _apiProvider = Get.find();
  Rx<ArticleData?> articlsList = Rx<ArticleData?>(null);
  var progressBar = false.obs;
  static const platform = MethodChannel('samples.flutter.dev/battery');
  var batteryLevel = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getTestList();
    getBatteryLevel();
  }

  Future<void> getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel.value = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel.value = "Failed to get battery level: '${e.message}'.";
    }
  }

  getTestList() {
    progressBar.value = false;
    _apiProvider.httpGetCall(BASE_URL + API_KEY).then((value) {
      if (value.isOk) {
        var data = ArticleData.fromJson(value.body);
        articlsList.value = data;
        progressBar.value = true;
      }
      if (value.statusCode == 400) {
        Get.snackbar("Error", "Something wen wrong");
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

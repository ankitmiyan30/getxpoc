import 'package:expansiontile/modules/home/controllers/home_controller.dart';
import 'package:expansiontile/network/provider/api_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get_test/get_test.dart';

main() {
  Get.put(ApiProvider());
  testController<HomeController>(
    "Validating the api for correct articles response",
    (controller) {},
    controller: HomeController(),
    onInit: (homeController) {
      expect(homeController.articlsList.value?.status, "OK");
    },
    onReady: (homeController) {
      print('onReady');
    },
    onClose: (homeController) {
      print('onClose');
    },
  );
}

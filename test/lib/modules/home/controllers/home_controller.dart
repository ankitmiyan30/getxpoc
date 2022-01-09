import 'package:expansiontile/modules/home/model/articles_response_model.dart';
import 'package:expansiontile/network/provider/api_provider.dart';
import 'package:expansiontile/utils/api_points.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ApiProvider _apiProvider = Get.find();
  Rx<ArticleData?> articlsList = Rx<ArticleData?>(null);
  var progressBar = false.obs;

  @override
  void onInit() {
    super.onInit();
    getTestList();
  }

  Future<String>? getTestList() {
    // progressBar.value = false;
    // _apiProvider.httpGetCall(BASE_URL + API_KEY).then((value) {
    //   if (value.isOk) {
    //     var data = ArticleData.fromJson(value.body);
    //     articlsList.value = data;
    //     progressBar.value = true;
    //   }
    //   if (value.statusCode == 400) {
    //     Get.snackbar("Error", "Something wen wrong");
    //   }
    // });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

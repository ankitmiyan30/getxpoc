import 'package:expansiontile/network/service/base_service.dart';
import 'package:get/get.dart';

class ApiProvider extends GetConnect with BaseApiServices {
  @override
  void onInit() {
    httpClient.baseUrl = "";
    httpClient.timeout = Duration(seconds: 5);
    httpClient.addResponseModifier((request, response) {
      return response;
    });
  }

  @override
  Future<Response> httpGetCall(url) async {
    final response = await get(
      url,
    );
    return response;
  }
}

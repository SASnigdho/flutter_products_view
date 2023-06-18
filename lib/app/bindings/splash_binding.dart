import 'package:get/get.dart';
import '../controllers/splash_controller.dart';
import '../data/helpers/api_client.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());

    Get.put(ApiClient(), permanent: true);
  }
}

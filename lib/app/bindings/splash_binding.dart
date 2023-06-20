import 'package:get/get.dart';
import '../controllers/splash_controller.dart';
import '../data/helpers/api_client.dart';
import '../data/services/db_service.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());

    Get.lazyPut(() => ApiClient());
    Get.lazyPut(() => DbService());
  }
}

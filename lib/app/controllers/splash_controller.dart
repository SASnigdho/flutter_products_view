import 'package:get/get.dart';

import '../routes/route_names.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();

    await Future.delayed(const Duration(seconds: 2), () async {
      await Get.offAllNamed(RouteNames.home);
    });
  }
}

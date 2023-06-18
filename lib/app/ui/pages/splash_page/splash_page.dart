import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/const/app_colors.dart';
import 'package:get/get.dart';
import '../../../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'Product View',
          style: Get.textTheme.headlineLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

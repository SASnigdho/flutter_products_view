import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartSummary extends StatelessWidget {
  const CartSummary(this.lText, this.rText, {super.key});

  final String lText;
  final String rText;

  @override
  Widget build(BuildContext context) {
    final titleMediumTs = Get.textTheme.titleMedium;
    final headlineLargeTs = Get.textTheme.headlineSmall;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(lText, style: titleMediumTs),
        Text(rText, style: headlineLargeTs),
      ],
    );
  }
}

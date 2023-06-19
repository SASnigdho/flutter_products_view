import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/product_show_controller.dart';

class ProductShowPage extends GetView<ProductShowController> {
  const ProductShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ProductShowPage')),
      body: const SafeArea(
        child: Text('ProductShowController'),
      ),
    );
  }
}

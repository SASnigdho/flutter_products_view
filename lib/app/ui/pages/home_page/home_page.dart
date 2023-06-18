import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/ui/pages/home_page/tabs/cart_tab.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';
import 'tabs/products_tab.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      const ProductsTab(),
      const CartTab(),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Obx(() => widgetOptions[controller.index.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Products'),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Cart'),
          ],
          currentIndex: controller.index.value,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    controller.index.value = index;
  }
}

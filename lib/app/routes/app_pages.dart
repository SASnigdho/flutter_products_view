import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/ui/pages/product_show_page/product_show_page.dart';
import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../bindings/product_show_binding.dart';
import '../bindings/splash_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/splash_page/splash_page.dart';
import 'route_names.dart';

const _defaultTransition = Transition.native;

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.unknown,
      page: () => const Scaffold(
        body: Center(child: Text('Unknown route')),
      ),
    ),
    GetPage(
      name: RouteNames.splash,
      binding: SplashBinding(),
      page: () => const SplashPage(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: RouteNames.home,
      binding: HomeBinding(),
      page: () => const HomePage(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: RouteNames.productShow,
      binding: ProductShowBinding(),
      page: () => const ProductShowPage(),
      transition: _defaultTransition,
    ),
  ];
}

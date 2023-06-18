import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';
import 'routes/route_names.dart';
import 'ui/theme/light.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Products View Demo',

      // Routing.
      initialRoute: RouteNames.splash,
      getPages: AppPages.pages,
      builder: (_, child) => child!,
      unknownRoute: AppPages.pages.first,

      theme: AppTheme.light,
    );
  }
}

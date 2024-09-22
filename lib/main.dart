import 'package:coffee_shop/core/utils/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const CoffeeShop());
  // runApp(DevicePreview(enabled: true, builder: (context)=>const CoffeeShop()));
}


class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        applyElevationOverlayColor: false
      ),
    );
  }
}



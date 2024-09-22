import 'package:coffee_shop/core/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

import 'mobile_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileView(),
        tabletLayout: (context) => const SizedBox());
  }
}

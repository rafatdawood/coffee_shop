import 'package:coffee_shop/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout,});

  final WidgetBuilder mobileLayout, tabletLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<SizeConfig.tablet){
        return mobileLayout(context);
      }else{
        return tabletLayout(context);
      }
    });
  }
}

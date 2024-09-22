import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../utils/assets_data.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Details',
        style: AppStyles.sora16SemiBold(context),
      ),
      leading: GestureDetector(onTap: ()=>GoRouter.of(context).pop(),child: Center(child: SvgPicture.asset(AssetsData.arrowLeftImage))),
      centerTitle: true,
      elevation: 0,
      backgroundColor: const Color(0xFFF8F8F8),
      actions: [
        SvgPicture.asset(AssetsData.blackHeartImage),
        const SizedBox(width: 24)
      ],
    );
  }
}

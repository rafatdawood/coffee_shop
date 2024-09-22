import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Details',
        style: AppStyles.sora16SemiBold(context),
      ),
      leading: Center(child: SvgPicture.asset(AssetsData.arrowLeftImage)),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xFFF8F8F8),
      actions: [
        SvgPicture.asset(AssetsData.blackHeartImage),
        SizedBox(width: 24)
      ],
    );
  }
}

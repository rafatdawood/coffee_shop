import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemFooter extends StatelessWidget {
  const ItemFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '\$ 4.53',
          style: AppStyles.sora18SemiBold(context).copyWith(
            color: const Color(0xFF050505),
          ),
        ),
        Center(child: SvgPicture.asset(AssetsData.plusImage)),
      ],
    );
  }
}

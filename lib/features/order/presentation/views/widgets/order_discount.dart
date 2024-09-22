import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderDiscount extends StatelessWidget {
  const OrderDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFEDEDED)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset(AssetsData.discountImage)),
          const SizedBox(width: 16),
          Text(
            '1 Discount is Applies',
            style: AppStyles.sora14SemiBold(context)
                .copyWith(color: const Color(0xFF303030)),
          ),
          const Spacer(),
          SvgPicture.asset(AssetsData.arrowRightImage)
        ],
      ),
    );
  }
}
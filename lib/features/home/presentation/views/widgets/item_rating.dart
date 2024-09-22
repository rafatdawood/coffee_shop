import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemRating extends StatelessWidget {
  const ItemRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        width: 51,
        height: 28,
        padding: const EdgeInsets.all(8),
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.87, -0.49),
            end: Alignment(0.87, 0.49),
            colors: [Color(0xFF111111), Color(0xFF303030)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(24),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsData.starImage,
            ),
            SizedBox(width: 4),
            Text(
              '4.8',
              style: AppStyles.sora8SemiBold(context),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: AspectRatio(
        aspectRatio: 327 / 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 13),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.bannerImage),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Color(0xFFEC5050),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 4),
                      child: Text(
                        'Promo',
                        style: AppStyles.sora14SemiBold(context),
                      ),
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      maxLines: 2,
                      'Buy one get one FREE',
                      style: AppStyles.sora32SemiBold(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

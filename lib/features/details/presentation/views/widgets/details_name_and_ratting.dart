import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsNameAndRatting extends StatelessWidget {
  const DetailsNameAndRatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Caffe Mocha',
              style: AppStyles.sora20SemiBold(context)
                  .copyWith(color: const Color(0xFF242424)),
            ),
            const SizedBox(height: 4),
            Text('Ice/Hot', style: AppStyles.sora12Regular(context)),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: SvgPicture.asset(
                      AssetsData.starImage,
                      height: 20,
                    )),
                const SizedBox(width: 4),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '4.8 ',
                          style: AppStyles.sora16SemiBold(context)),
                      TextSpan(
                          text: '(230)',
                          style: AppStyles.sora12Regular(context)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(AssetsData.bikeImage),
            const SizedBox(width: 12),
            SvgPicture.asset(AssetsData.beanImage),
            const SizedBox(width: 12),
            SvgPicture.asset(AssetsData.milkImage),
          ],
        )
      ],
    );
  }
}

import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderAddress extends StatelessWidget {
  const OrderAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Address',
          style: AppStyles.sora16SemiBold(context),
        ),
        const SizedBox(height: 16),
        Text('Jl. Kpg Sutoyo',
            style: AppStyles.sora14SemiBold(context).copyWith(
              color: const Color(0xFF303030),
            )),
        const SizedBox(height: 4),
        Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
            style: AppStyles.sora12Regular(context)),
        const SizedBox(height: 16),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFA2A2A2)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: SvgPicture.asset(AssetsData.editImage)),
                  const SizedBox(width: 4),
                  Center(
                    child: Text(
                      'Edit Address',
                      style: AppStyles.sora12Regular(context)
                          .copyWith(color: const Color(0xFF303030)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFA2A2A2)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: SvgPicture.asset(AssetsData.noteImage)),
                  const SizedBox(width: 4),
                  Center(
                    child: Text(
                      'Add Note',
                      style: AppStyles.sora12Regular(context)
                          .copyWith(color: const Color(0xFF303030)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
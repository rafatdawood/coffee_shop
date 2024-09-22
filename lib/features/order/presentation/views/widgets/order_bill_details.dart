import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OrderBillDetails extends StatelessWidget {
  const OrderBillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Summary', style: AppStyles.sora16SemiBold(context)),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price',
              style: AppStyles.sora14Regular(context),
            ),
            Text(
              '\$ 4.53',
              textAlign: TextAlign.right,
              style: AppStyles.sora14SemiBold(context).copyWith(
                color: const Color(0xFF242424),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Fee',
              style: AppStyles.sora14Regular(context),
            ),
            Row(
              children: [
                Text('\$ 2.0',
                    style: AppStyles.sora14Regular(context).copyWith(
                        color: const Color(0xFF2A2A2A),
                        decoration: TextDecoration.lineThrough)),
                const SizedBox(width: 8),
                Text(
                  '\$ 4.53',
                  textAlign: TextAlign.right,
                  style: AppStyles.sora14SemiBold(context).copyWith(
                    color: const Color(0xFF242424),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
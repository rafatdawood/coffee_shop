import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'item_footer.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Caffe Mocha',
          style: AppStyles.sora16SemiBold(context),
        ),
        const SizedBox(height: 4),
        Text('Deep Foam', style: AppStyles.sora12Regular(context)),
        const SizedBox(height: 8),
        const ItemFooter(),
      ],
    );
  }
}

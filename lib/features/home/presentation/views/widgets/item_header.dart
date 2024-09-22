import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

import 'item_rating.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage(AssetsData.coffee1Image),
                fit: BoxFit.fill),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const ItemRating(),
      ],
    );
  }
}

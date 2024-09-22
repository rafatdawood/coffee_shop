import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:coffee_shop/features/home/presentation/views/widgets/item_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'item_details.dart';
import 'item_header.dart';
import 'item_rating.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ItemHeader(),
          ),
          SizedBox(height: 8),
          ItemDetails()
        ],
      ),
    );
  }
}

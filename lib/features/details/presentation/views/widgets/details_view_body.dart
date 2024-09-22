import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:coffee_shop/core/widgets/custom_divider.dart';
import 'package:coffee_shop/features/details/presentation/views/widgets/details_and_size.dart';
import 'package:coffee_shop/features/details/presentation/views/widgets/details_image.dart';
import 'package:coffee_shop/features/details/presentation/views/widgets/details_name_and_ratting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        DetailsImage(),
        SizedBox(
          height: 16,
        ),
        DetailsNameAndRatting(),
        SizedBox(height: 16),
        CustomDivider(),
        SizedBox(height: 16),
        DetailsAndSize(),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}

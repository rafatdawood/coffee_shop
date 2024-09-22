import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_router.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:coffee_shop/core/widgets/custom_back_ground_container.dart';
import 'package:coffee_shop/core/widgets/custom_button.dart';
import 'package:coffee_shop/features/details/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        title: Text(
          'Details',
          style: AppStyles.sora16SemiBold(context),
        ),
        leading: GestureDetector(
            onTap: () => GoRouter.of(context).pop(),
            child: Center(child: SvgPicture.asset(AssetsData.arrowLeftImage))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFFF8F8F8),
        actions: [
          SvgPicture.asset(AssetsData.blackHeartImage),
          const SizedBox(width: 24)
        ],
      ),
      body: Stack(
        children: [
          const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CustomBackGroundContainer(
                  child: DetailsViewBody(),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 100,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: AppStyles.sora14Regular(context).copyWith(
                              color: const Color(0xFF909090),
                            ),
                          ),
                          Text('\$ 4.53',
                              style: AppStyles.sora18SemiBold(context)
                                  .copyWith(color: AppColors.buttonColor)),
                        ],
                      ),
                      const SizedBox(width: 34),
                      CustomButton(
                        bR: 16,
                        child: Text(
                          'Buy Now',
                          style: AppStyles.sora16SemiBold(context)
                              .copyWith(color: const Color(0xFFFFFFFF)),
                        ),
                        onPressed: () => navToOrderScreen(context),
                        bgColor: AppColors.buttonColor,
                        btnHeight: 56,
                        btnWidth: 217,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  void navToOrderScreen(context) {
    GoRouter.of(context).push(AppRouter.kOrderView);
  }
}

import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/widgets/custom_button.dart';
import 'package:coffee_shop/features/order/presentation/views/widgets/order_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/assets_data.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        title: Text(
          'Order',
          style: AppStyles.sora16SemiBold(context),
        ),
        leading: GestureDetector(
            onTap: () => GoRouter.of(context).pop(),
            child: Center(child: SvgPicture.asset(AssetsData.arrowLeftImage))),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFFF8F8F8),
      ),
      body: Stack(
        children: [
          const CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: OrderViewBody(),
            ),
          ]),
          Positioned(
            height: MediaQuery.sizeOf(context).height * .2,
              bottom: 0,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: SvgPicture.asset(AssetsData.walletImage),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cash/Wallet',
                                style:
                                    AppStyles.sora14SemiBold(context).copyWith(
                                  color: const Color(0xFF242424),
                                ),
                              ),
                              Text(
                                '\$ 5.53',
                                style:
                                    AppStyles.sora12Regular(context).copyWith(
                                  color: const Color(0xFFC67C4E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Center(
                            child: SvgPicture.asset(AssetsData.arrowDownImage),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AspectRatio(
                        aspectRatio: 327/56,
                        child: CustomButton(
                          bR: 16,
                          onPressed: () {},
                          bgColor: AppColors.buttonColor,
                          child: Text(
                            'Order',
                            style: AppStyles.sora16SemiBold(context)
                                .copyWith(color: const Color(0xFFFFFFFF)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

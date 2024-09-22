import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_router.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:coffee_shop/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsData.bgImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Fall in Love with Coffee in Blissful Delight!',
                    style: AppStyles.sora32SemiBold(context)
                        .copyWith(letterSpacing: 0.16),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                    textAlign: TextAlign.center,
                    style: AppStyles.sora14Regular(context).copyWith(
                      color: const Color(0xFFA2A2A2),
                      letterSpacing: 0.14,
                    ),
                  ),
                ),
                 // FittedBox(fit: BoxFit.scaleDown,child: SizedBox(height: 32)),
                SizedBox(height: 8),
                CustomButton(
                  btnWidth: MediaQuery.sizeOf(context).width,
                  bR: 16,
                  bgColor: AppColors.buttonColor,
                  padding: 24,
                  child: Text('Get Started',style: AppStyles.sora16SemiBold(context)
                      .copyWith(color: Colors.white),),
                  onPressed: () => navToMainView(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void navToMainView(context) {
    GoRouter.of(context).pushReplacement(AppRouter.kMainView);
  }
}

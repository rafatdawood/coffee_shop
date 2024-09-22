import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom_widget.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      bottom: const PreferredSize(
        preferredSize: Size.zero,
        child: BottomWidget(),
      ),
      pinned: true,
      floating: true,
      expandedHeight: MediaQuery.sizeOf(context).height < 700
          ? MediaQuery.sizeOf(context).height * .52
          : MediaQuery.sizeOf(context).height * .45,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 68),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(
                      -0.49,
                      -0.87,
                    ),
                    end: const Alignment(0.49, 0.87),
                    colors: [const Color(0xFF111111), AppColors.backGround],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Location',
                      style: TextStyle(
                        color: Color(0xFFA2A2A2),
                        fontSize: 12,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text(
                          'Bilzen, Tanjungbalai',
                          style: TextStyle(
                            color: Color(0xFFD8D8D8),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SvgPicture.asset(
                          AssetsData.arrowDownSImage,
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 52,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                fillColor: const Color(0xFF2a2a2a),
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                                hintText: 'Search coffee',
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child:
                                      SvgPicture.asset(AssetsData.searchImage),
                                ),
                                hintStyle: AppStyles.sora14Regular(context)
                                    .copyWith(
                                        color: const Color(0xFF828BA9),
                                        shadows: []),
                                border: buildOutlineInputBorder(),
                                enabledBorder: buildOutlineInputBorder(),
                                focusedBorder: buildOutlineInputBorder()),
                          )),
                          const SizedBox(width: 16),
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.buttonColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  AssetsData.filterImage,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0xFFF8F8F8),
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Color(0xFF2a2a2a),
    ),
  );
}

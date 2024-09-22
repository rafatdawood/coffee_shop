import 'package:coffee_shop/core/utils/app_colors.dart';
import 'package:coffee_shop/core/widgets/custom_back_ground_container.dart';
import 'package:coffee_shop/core/widgets/custom_divider.dart';
import 'package:coffee_shop/features/order/presentation/views/widgets/order_by.dart';
import 'package:flutter/material.dart';

import 'order_address.dart';
import 'order_bill_details.dart';
import 'order_discount.dart';
import 'order_items.dart';

class OrderViewBody extends StatefulWidget {
  const OrderViewBody({super.key});

  @override
  State<OrderViewBody> createState() => _OrderViewBodyState();
}

class _OrderViewBodyState extends State<OrderViewBody> {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomBackGroundContainer(
          child: Column(
            children: [
              SizedBox(height: 24),
              OrderBy(),
              SizedBox(height: 24),
              OrderAddress(),
              SizedBox(height: 16),
              CustomDivider(),
              SizedBox(height: 16),
              OrderItems(),
            ],
          ),
        ),
        Divider(
          color: AppColors.mainBackGround,
          thickness: 4,
          height: 38,
        ),
         CustomBackGroundContainer(
          child: Column(
            children: [
              const OrderDiscount(),
              const SizedBox(height: 24),
              const OrderBillDetails(),
              SizedBox(height: height * .21,)
            ],
          ),
        ),
      ],
    );
  }
}








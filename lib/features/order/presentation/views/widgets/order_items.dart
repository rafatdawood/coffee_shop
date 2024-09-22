import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderItems extends StatefulWidget {
  const OrderItems({super.key});

  @override
  State<OrderItems> createState() => _OrderItemsState();
}

class _OrderItemsState extends State<OrderItems> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: NetworkImage("https://via.placeholder.com/54x54"),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Caffe Mocha', style: AppStyles.sora16SemiBold(context)),
            const SizedBox(height: 4),
            Text('Deep Foam', style: AppStyles.sora12Regular(context))
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (counter > 1) {
                      counter--;
                    }
                  });
                },
                child: SvgPicture.asset(
                  AssetsData.decrementImage,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 36,
              child: Text(
                textAlign: TextAlign.center,
                "$counter",
                style: AppStyles.sora14SemiBold(context)
                    .copyWith(color: const Color(0xFF2A2A2A)),
              ),
            ),
            const SizedBox(width: 10),
            Center(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: SvgPicture.asset(AssetsData.incrementImage)))
          ],
        ),
      ],
    );
  }
}
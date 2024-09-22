import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OrderBy extends StatefulWidget {
  const OrderBy({super.key});

  @override
  State<OrderBy> createState() => _OrderByState();
}

class _OrderByState extends State<OrderBy> {
  int activeBtn = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeBtn = 0;
                });
              },
              child: Container(
                decoration: ShapeDecoration(
                  color: activeBtn == 0
                      ? const Color(0xFFC67C4E)
                      : const Color(0xFFEDEDED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Deliver',
                    style: activeBtn == 0
                        ? AppStyles.sora16SemiBold(context).copyWith(
                      color: Colors.white,
                    )
                        : AppStyles.sora16Regular(context),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeBtn = 1;
                });
              },
              child: Container(
                decoration: ShapeDecoration(
                  color: activeBtn == 1
                      ? const Color(0xFFC67C4E)
                      : const Color(0xFFEDEDED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Pick Up',
                    style: activeBtn == 1
                        ? AppStyles.sora16SemiBold(context).copyWith(
                      color: Colors.white,
                    )
                        : AppStyles.sora16Regular(context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

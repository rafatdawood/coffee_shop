import 'package:coffee_shop/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DetailsAndSize extends StatefulWidget {
  const DetailsAndSize({super.key});

  @override
  State<DetailsAndSize> createState() => _DetailsAndSizeState();
}

class _DetailsAndSizeState extends State<DetailsAndSize> {
  bool maxLines = false;

  late String activeSize = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: AppStyles.sora16SemiBold(context)),
        const SizedBox(height: 8),
        InkWell(
          overlayColor: WidgetStateColor.transparent,
          onTap: () {
            setState(() {
              maxLines = !maxLines;
            });
          },
          child: Text(
            'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
            style: AppStyles.sora14Regular(context).copyWith(
              color: const Color(0xFFA2A2A2),
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.fade,
            ),
            maxLines: maxLines?null:3,

          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Size',
          style: AppStyles.sora16SemiBold(context),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeSize = 'S';
                  });
                },
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 41),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    color: activeSize == 'S'
                        ? const Color(0xFFF9F2ED)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1,
                          color: activeSize == 'S'
                              ? const Color(0xFFC67C4E)
                              : const Color(0xFFE3E3E3)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "S",
                    style: AppStyles.sora14Regular(context).copyWith(
                        color: activeSize == 'S'
                            ? const Color(0xFFC67C4E)
                            : const Color(0xFF242424)),
                  )),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeSize = 'M';
                  });
                },
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 41),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    color: activeSize == 'M'
                        ? const Color(0xFFF9F2ED)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1,
                          color: activeSize == 'M'
                              ? const Color(0xFFC67C4E)
                              : const Color(0xFFE3E3E3)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "M",
                    style: AppStyles.sora14Regular(context).copyWith(
                        color: activeSize == 'M'
                            ? const Color(0xFFC67C4E)
                            : const Color(0xFF242424)),
                  )),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeSize = 'L';
                  });
                },
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 41),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    color: activeSize == 'L'
                        ? const Color(0xFFF9F2ED)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1,
                          color: activeSize == 'L'
                              ? const Color(0xFFC67C4E)
                              : const Color(0xFFE3E3E3)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "L",
                    style: AppStyles.sora14Regular(context).copyWith(
                        color: activeSize == 'L'
                            ? const Color(0xFFC67C4E)
                            : const Color(0xFF242424)),
                  )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

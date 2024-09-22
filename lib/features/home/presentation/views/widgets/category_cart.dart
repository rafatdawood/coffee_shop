import 'package:flutter/material.dart';

import 'in_active_item_and_active_item.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart(
      {super.key, required this.title, required this.isSelected});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            title: title,
          )
        : InActiveItem(
            title: title,
          );
  }
}

import 'package:coffee_shop/features/home/presentation/views/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 24,
          childAspectRatio: 156 / 238,
        ),
        itemBuilder: (context, index) {
          return GridItem();
        },
      ),
    );
  }
}

import 'package:coffee_shop/features/home/presentation/views/widgets/category_cart.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  List<String> categories = [
    'All Coffee',
    'Machiato',
    'Latte',
    'Americano',
    'Turkish coffee',
    'Arabic coffee'
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: 29,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: CategoryCart(
                  title: categories[index],
                  isSelected: selectedIndex == index,
                ));
          },
        ),
      ),
    );
  }
}

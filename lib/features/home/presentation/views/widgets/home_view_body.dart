import 'package:coffee_shop/core/utils/app_router.dart';
import 'package:coffee_shop/features/home/presentation/views/widgets/grid_item.dart';
import 'package:coffee_shop/features/home/presentation/views/widgets/sliver_app_bar_widget.dart';
import 'package:coffee_shop/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBarWidget(),
        const SliverToBoxAdapter(child: CategoriesListView()),
        // SliverToBoxAdapter(child: GridViewItems(),),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 5,
              (context, index) {
                return GestureDetector(
                  onTap: () => navToDetailsScreen(context),
                  child: const GridItem(),
                );
              },
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 24,
              childAspectRatio: 156 / 238,
            ),
          ),
        )
      ],
    );
  }

  void navToDetailsScreen(context) {
    GoRouter.of(context).push(AppRouter.kDetailsView);
  }
}

import 'package:coffee_shop/features/details/presentation/views/details_view.dart';
import 'package:coffee_shop/features/order/presentation/views/order_view.dart';
import 'package:coffee_shop/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/main/presentation/views/main_view.dart';



abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kOrderView = '/orderView';
  static const kMainView = '/mainView';
  static const kDetailsView = '/detailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kMainView,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const DetailsView(),
      ),
      GoRoute(
        path: kOrderView,
        builder: (context, state) => const OrderView(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => BlocProvider(
      //     create: (BuildContext context) =>
      //         SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
      //     child: BookDetailsView(
      //       bookModel: state.extra as BookModel,
      //     ),
      //   ),
      // ),
    ],
  );
}

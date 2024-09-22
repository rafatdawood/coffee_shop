import 'package:coffee_shop/core/utils/assets_data.dart';
import 'package:coffee_shop/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  List pages = [
    const HomeView(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.homeImage),
            label: '_',
            activeIcon: SvgPicture.asset(AssetsData.activeHomeImage),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.heartImage),
            label: '_',
            activeIcon: SvgPicture.asset(AssetsData.activeHeartImage),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.bagImage),
            label: '_',
            activeIcon: SvgPicture.asset(AssetsData.activeBagImage),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AssetsData.notificationImage),
            label: '_',
            activeIcon: SvgPicture.asset(AssetsData.activeNotificationImage),
          ),
        ],
      ),
    );
  }
}



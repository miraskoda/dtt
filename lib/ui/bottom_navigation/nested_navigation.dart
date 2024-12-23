import 'package:dtt/core/constants/constants.dart';
import 'package:dtt/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NestedNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const NestedNavigation({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        height: AppConstants.bottomNavbarHeight,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
              label: 'home',
              icon: Opacity(
                opacity: 0 == navigationShell.currentIndex ? 1 : 0.2,
                child: Assets.icons.icHome.svg(),
              )),
          NavigationDestination(
              label: 'info',
              icon: Opacity(
                opacity: 1 == navigationShell.currentIndex ? 1 : 0.2,
                child: Assets.icons.icInfo.svg(),
              )),
        ],
        onDestinationSelected: (i) => navigationShell.goBranch(
          i,
          initialLocation: i == navigationShell.currentIndex,
        ),
      ),
    );
  }
}

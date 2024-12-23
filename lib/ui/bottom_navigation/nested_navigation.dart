import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        indicatorColor: Colors.transparent,
        height: 40,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
              label: 'Home',
              icon: Opacity(
                opacity: 0 == navigationShell.currentIndex ? 1 : 0.2,
                child: SvgPicture.asset(
                  "assets/icons/ic_home.svg",
                ),
              )),
          NavigationDestination(
              label: 'Info',
              icon: Opacity(
                opacity: 1 == navigationShell.currentIndex ? 1 : 0.2,
                child: SvgPicture.asset(
                  "assets/icons/ic_info.svg",
                ),
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

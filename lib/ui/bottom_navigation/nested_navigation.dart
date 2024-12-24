import 'package:dtt/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum NavigationItem { home, info }

class Destination {
  final String label;
  final SvgGenImage icon;
  const Destination(this.label, this.icon);
}

final destinations = [
  Destination(NavigationItem.home.name, Assets.icons.icHome),
  Destination(NavigationItem.info.name, Assets.icons.icInfo),
];

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
        selectedIndex: navigationShell.currentIndex,
        destinations: destinations.map((destination) {
          final index = destinations.indexOf(destination);
          return NavigationDestination(
            label: destination.label,
            icon: Opacity(
              opacity: navigationShell.currentIndex == index ? 1 : 0.2,
              child: destination.icon
                  .svg(colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn)),
            ),
          );
        }).toList(),
        onDestinationSelected: (i) => navigationShell.goBranch(
          i,
          initialLocation: i == navigationShell.currentIndex,
        ),
      ),
    );
  }
}

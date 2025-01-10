import 'package:flutter/material.dart';
import 'package:navigation_advanced/navigation_menu.dart';
import 'package:navigation_advanced/utils/router_without_animation.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (value) {
        Navigator.pushAndRemoveUntil(
          context, createRoute(Navigation(initialIndex: value)),
          (route) => false);
      },
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.home),
          label: "홈",
        ),
        NavigationDestination(
          icon: const Icon(Icons.search_off_rounded),
          label: "검색",
        ),
        NavigationDestination(
          icon: const Icon(Icons.settings),
          label: "설정",
        ),
      ],
    );
  }
}

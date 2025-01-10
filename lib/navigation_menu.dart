import 'package:flutter/material.dart';
import 'package:navigation_advanced/features/test_category/screens/home.dart';
import 'package:navigation_advanced/features/test_category/screens/search.dart';
import 'package:navigation_advanced/features/test_category/screens/settings.dart';

class Navigation extends StatefulWidget {
  final int initialIndex;

  const Navigation({super.key, this.initialIndex = 0});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
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
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeScreen(),
          SearchScreen(),
          SettingsScreen(),
        ],
      ),
    );
  }
}

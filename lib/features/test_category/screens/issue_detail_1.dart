import 'package:flutter/material.dart';
import 'package:navigation_advanced/widgets/custom_app_bar.dart';
import 'package:navigation_advanced/navigation_menu.dart';
import 'package:navigation_advanced/widgets/custom_navigation_bar.dart';
import 'package:navigation_advanced/utils/router_without_animation.dart';

class IssueDetailScreen1 extends StatelessWidget {
  const IssueDetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "이슈 1: 네비게이션 성공"),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: const Text(
            "이슈1\n페이지입니다.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: 1, // SearchScreen Index
        onDestinationSelected: (value) {
        Navigator.pushAndRemoveUntil(
          context, createRoute(Navigation(initialIndex: value)),
          (route) => false);
        },
      ),
    );
  }
}

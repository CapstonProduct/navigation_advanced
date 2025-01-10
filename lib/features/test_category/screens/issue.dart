import 'package:flutter/material.dart';
import 'package:navigation_advanced/widgets/custom_app_bar.dart';
import 'package:navigation_advanced/features/test_category/screens/issue_detail_1.dart';
import 'package:navigation_advanced/navigation_menu.dart';
import 'package:navigation_advanced/widgets/custom_navigation_bar.dart';
import 'package:navigation_advanced/utils/router_without_animation.dart';

class IssueScreen extends StatelessWidget {
  const IssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "최신 이슈 목록"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
            height: 400,
            width: 200,
            child: const Text(
              "최신 이슈 목록\n페이지입니다.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, createRoute(const IssueDetailScreen1()));
              },
              child: const Text('이슈 1 보러가기'),
            ),
          ],
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

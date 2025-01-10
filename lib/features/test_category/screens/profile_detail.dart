import 'package:flutter/material.dart';
import 'package:navigation_advanced/widgets/custom_app_bar.dart';
import 'package:navigation_advanced/navigation_menu.dart';
import 'package:navigation_advanced/widgets/custom_navigation_bar.dart';
import 'package:navigation_advanced/utils/router_without_animation.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "상세 프로필"),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: const Text(
            "상세 프로필\n페이지입니다.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: 2, // SettingsScreen Index
        onDestinationSelected: (value) {
        Navigator.pushAndRemoveUntil(
          context, createRoute(Navigation(initialIndex: value)),
          (route) => false);
        },
      ),
    );
  }
}

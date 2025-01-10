import 'package:flutter/material.dart';
import 'package:navigation_advanced/features/test_category/screens/profile_detail.dart';
import '../utils/router_without_animation.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.lime.shade400,
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle),
          iconSize: 40.0,
          color: Colors.white,
          onPressed: () {
            Navigator.push(context, createRoute(const ProfileDetailScreen()));
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
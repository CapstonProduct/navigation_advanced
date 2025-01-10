import 'package:flutter/material.dart';
import 'package:navigation_advanced/widgets/custom_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "환경 설정"),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Image.asset('assets/settings.png'),
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:navigation_advanced/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Flutter 네비게이션 홈"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home 페이지입니다.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset('assets/home.png'),
            ),
          ],
        ),
      ),
    );
  }
}


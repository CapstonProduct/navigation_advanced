import 'package:flutter/material.dart';
import 'package:navigation_advanced/widgets/custom_app_bar.dart';
import 'package:navigation_advanced/features/test_category/screens/issue.dart';
import 'package:navigation_advanced/features/test_category/screens/search_list.dart';
import 'package:navigation_advanced/utils/router_without_animation.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "최신 건강 정보 검색"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset('assets/search.png'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, createRoute(const SearchListScreen()));
              }, 
              child: const Text('지난 검색 기록'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, createRoute(const IssueScreen()));
              }, 
              child: const Text('최신 이슈 목록'),
            ),
          ],
        ),
      )
    );
  }
}

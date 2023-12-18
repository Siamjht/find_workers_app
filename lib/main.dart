
import 'package:find_workers_app/view/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/screen/home_screen/home_screen.dart';
import 'view/screen/search_screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      // home: SearchScreen(),
      // home: Categories(),
      // home: HomeScreen(),
    );
  }
}


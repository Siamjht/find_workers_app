
import 'package:find_workers_app/utils/const_image.dart';
import 'package:find_workers_app/view/screen/categories_screen.dart';
import 'package:find_workers_app/view/screen/hire_list_screen.dart';
import 'package:find_workers_app/view/screen/home_screen/home_screen.dart';
import 'package:find_workers_app/view/screen/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  List navigationPagesList = [
    HomeScreen(),
    CategoriesScreen(),
    HireListScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 88,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFF0668E3),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF0668E3),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.7),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            // unselectedItemColor: Colors.black,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });},
            items: [
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 0? ConstImage.homeSolidNavIcon:ConstImage.homeNavIcon), label: "Home"),
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 1? ConstImage.categorySolidNavIcon:ConstImage.categoryNavIcon), label: "Category"),
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 2? ConstImage.hireListSolidNavIcon:ConstImage.hireListNavIcon), label: "Hire List"),
              BottomNavigationBarItem(icon:
              Image.asset(currentIndex == 3? ConstImage.profileSolidNavIcon:ConstImage.profileNavIcon), label: "Profile"),
            ]),
      ),
      // extendBody: true,
      body: navigationPagesList[currentIndex],
    );
  }
}



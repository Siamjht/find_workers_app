
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/const_image.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'home_widgets/home_list_view.dart';
import 'home_widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(ConstImage.logo),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notifications_none_outlined),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130,
                  child: HomeListView()),
              HomeScreenItems(),
              SizedBox(height: 24,),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t see what you’re looking for?\nGo to ',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'Categories',
                      style: TextStyle(
                        color: Color(0xFF0668E3),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24,),

            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),

    );
  }
}

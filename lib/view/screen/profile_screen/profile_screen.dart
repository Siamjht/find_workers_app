import 'package:find_workers_app/utils/const_image.dart';
import 'package:find_workers_app/utils/const_string.dart';
import 'package:find_workers_app/view/screen/profile_screen/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0668E3),
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width - 50,
            decoration: const BoxDecoration(
                color: Color(0xFF0668E3),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: Column(
              children: [
                const SizedBox(height: 30),
                CircleAvatar(
                  radius: 65,
                  child: Image.asset("assets/images/profileImg.png"),
                ),
                const SizedBox(height: 35),
                const Text(
                  "Smith John",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 20 ),
               ElevatedButton(
                   onPressed: (){
                   },
                 style: ButtonStyle(
                   elevation: MaterialStateProperty.all(1.0),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8.0),
                     ),
                   ),
                   backgroundColor: MaterialStateProperty.all(Colors.white),
                 ),
                   child: const Text(
                       "Purchaser",
                     style: TextStyle(
                       color: Color(0xFF0668E3),
                       fontSize: 14,
                       fontFamily: 'Poppins',
                       fontWeight: FontWeight.w600,
                     ),
                   ),
               ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileWidget(personIcon: ConstImage.personIcon, personInformation: ConstString.personalInformation, itemNumber: 0,),
                ProfileWidget(personIcon: ConstImage.historyIcon, personInformation: ConstString.history, itemNumber: 1,),
                ProfileWidget(personIcon: ConstImage.settingsIcon, personInformation: ConstString.settings, itemNumber: 2,),
                ProfileWidget(personIcon: ConstImage.logoutIcon, personInformation: ConstString.logout, itemNumber: 3,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

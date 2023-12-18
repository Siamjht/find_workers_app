
import 'package:find_workers_app/utils/const_image.dart';
import 'package:find_workers_app/utils/const_string.dart';
import 'package:find_workers_app/view/screen/profile_screen/profile_widgets/personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_edit.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0668E3),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            size: 18,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Personal Information",
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
                  child: InkWell(
                    onTap: (){
                      Get.to(const ProfileEdit());
                    },
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Color(0xFF0668E3),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
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
                PersonalInfoWidget(personIcon: ConstImage.personIcon , personInformation: ConstString.person, onTap: (){
                  Get.to(ProfileEdit());
                },),
                PersonalInfoWidget(personIcon: ConstImage.birthIcon, personInformation: ConstString.birthDate, onTap: (){}),
                PersonalInfoWidget(personIcon: ConstImage.genderIcon, personInformation: ConstString.gender, onTap: (){}),
                PersonalInfoWidget(personIcon: ConstImage.phoneIcon, personInformation: ConstString.phoneNumber, onTap: (){}),
                PersonalInfoWidget(personIcon: ConstImage.mailIcon, personInformation: ConstString.mail, onTap: (){}),
                PersonalInfoWidget(personIcon: ConstImage.locationIcon, personInformation: ConstString.location, onTap: (){}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

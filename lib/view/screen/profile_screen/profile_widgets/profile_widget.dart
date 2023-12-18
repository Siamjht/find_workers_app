
import 'package:find_workers_app/view/screen/profile_screen/personalInformation.dart';
import 'package:find_workers_app/view/screen/profile_screen/profile_logout.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  String personIcon;
  String personInformation;
  int itemNumber;
  ProfileWidget({super.key, required this.personIcon, required this.personInformation, required this.itemNumber});
  ProfileLogout profileLogout = ProfileLogout();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 72,
      padding: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFCDE1F9),
          )
        )
      ),

      child: GestureDetector(
        onTap: (){
          if(itemNumber == 0){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const PersonalInformation()));
          }
          else if(itemNumber == 3){
            showDialog(context: context, builder: (BuildContext context) => profileLogout.logOutMenu(context));
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Tab(
              icon: Image.asset('${personIcon}'),
            ),
            const SizedBox(width: 16),
            Text(
              personInformation,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

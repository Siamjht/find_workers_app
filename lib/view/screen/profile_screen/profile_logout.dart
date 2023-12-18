
import 'package:flutter/material.dart';

class ProfileLogout {
  logOutMenu(context){
    return AlertDialog(
      title: const Text(
        'Do you want to logout your profile?',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Yes'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('No'),
        ),
      ],
    );
  }
}

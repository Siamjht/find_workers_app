
import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Personal Information"),
      ),
      body: SafeArea(child: Text("This is Profile Edit Page")),
    );
  }
}

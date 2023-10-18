import 'package:e_commerce/reusable.dart';
import 'package:flutter/material.dart';

import '../../material.dart';
import 'HomeScreen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyMaterial().bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyMaterial().bgColor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot password",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 87,
            ),
            Text(
              "Please, enter your email address. You will receive a link to create a new password via email.",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 16,
            ),
            TExtFieldREusable(lable: "email", icon: null),
            SizedBox(
              height: 70,
            ),
            ElevatedButtonReusable(
              label: "Send",
              navigation: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

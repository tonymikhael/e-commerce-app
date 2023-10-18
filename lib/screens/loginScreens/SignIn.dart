import 'package:e_commerce/material.dart';
import 'package:e_commerce/reusable.dart';
import 'package:e_commerce/screens/loginScreens/ForgotPassword.dart';
import 'package:e_commerce/screens/loginScreens/HomeScreen.dart';
import 'package:flutter/material.dart';

class SignIN extends StatefulWidget {
  const SignIN({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyMaterial().bgColor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      backgroundColor: MyMaterial().bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign in",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 74,
              ),
              TExtFieldREusable(lable: "email", icon: Icons.done),
              SizedBox(
                height: 8,
              ),
              TExtFieldREusable(lable: "password", icon: Icons.password),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "forgot your password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ForgotPassword();
                      }));
                    },
                    color: Colors.red,
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 343,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    child: Text(
                      "Sign IN",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
              SizedBox(
                height: 90,
              ),
              Center(
                child: Text(
                  "or sign up with social account",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 92,
                      height: 64,
                      child: Image(
                          image: AssetImage('assets/images/facebook.png')),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 92,
                      height: 64,
                      child:
                          Image(image: AssetImage('assets/images/google.png')),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

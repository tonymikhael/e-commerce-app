import 'package:e_commerce/material.dart';
import 'package:e_commerce/reusable.dart';
import 'package:e_commerce/screens/loginScreens/SignIn.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 74,
              ),
              TExtFieldREusable(
                lable: "name",
                icon: Icons.done,
              ),
              SizedBox(
                height: 8,
              ),
              TExtFieldREusable(
                lable: "Email",
                icon: Icons.email,
              ),
              SizedBox(
                height: 8,
              ),
              TExtFieldREusable(
                lable: "password",
                icon: Icons.password_sharp,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {},
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
                        return SignIN();
                      }));
                    },
                    child: Text(
                      "Sign Up",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
              SizedBox(
                height: 50,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

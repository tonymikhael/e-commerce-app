import 'package:e_commerce/menCategory.dart';
import 'package:e_commerce/screens/loginScreens/Bag.dart';
import 'package:e_commerce/screens/loginScreens/Brand.dart';
import 'package:e_commerce/screens/loginScreens/CheckOut.dart';
import 'package:e_commerce/screens/loginScreens/Favourite.dart';
import 'package:e_commerce/screens/loginScreens/Filter.dart';
import 'package:e_commerce/screens/loginScreens/Home.dart';
import 'package:e_commerce/screens/loginScreens/HomeScreen.dart';
import 'package:e_commerce/screens/loginScreens/PaymentMethod.dart';
import 'package:e_commerce/screens/loginScreens/ProductCard.dart';
import 'package:e_commerce/screens/loginScreens/Profile.dart';
import 'package:e_commerce/screens/loginScreens/Rating.dart';
import 'package:e_commerce/screens/loginScreens/Shop.dart';
import 'package:e_commerce/screens/loginScreens/SignIn.dart';
import 'package:e_commerce/screens/loginScreens/SignUp.dart';
import 'package:e_commerce/screens/loginScreens/WomensTops.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUP(),
    );
  }
}

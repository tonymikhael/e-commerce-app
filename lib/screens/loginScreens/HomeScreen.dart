import 'package:e_commerce/material.dart';
import 'package:e_commerce/screens/loginScreens/Bag.dart';
import 'package:e_commerce/screens/loginScreens/Favourite.dart';
import 'package:e_commerce/screens/loginScreens/Home.dart';
import 'package:e_commerce/screens/loginScreens/Profile.dart';
import 'package:e_commerce/screens/loginScreens/Shop.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> navigationList = [
    const Home(),
    const Shop(),
    const Bag(),
    const Favourite(),
    const Profile(),
  ];
  void changeNavigationBar(int i) {
    index = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration:const  BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 8, color: Colors.grey),
          ],
        ),
        child: ClipRRect( 
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomNavigationBar(
              currentIndex: index,
              onTap: changeNavigationBar,
              fixedColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.badge_sharp), label: "Bag"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Favourite"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]),
        ),
      ),
      body: navigationList[index],
    );
  }
}

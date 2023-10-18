import 'package:flutter/material.dart';

import '../../material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyMaterial().bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My profile",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            ListTile(
              subtitle: Text(
                "tonyMikhael100@gmail.com",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              title: Text("Tony mikhael"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/me.jpg',
                ),
              ),
            ),
            ListTile(
              subtitle: Text(
                "Already have 12 order",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              title: Text("My order"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              subtitle: Text(
                "3 addresses",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              title: Text("Shipping address"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              subtitle: Text(
                "you have special promo code",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              title: Text("Promocodes"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              subtitle: Text(
                "Reviews 4 items",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              title: Text("My Reviews"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              subtitle: Text(
                "Notification,password",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              title: Text("Settings "),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}

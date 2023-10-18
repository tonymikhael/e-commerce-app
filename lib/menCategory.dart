import 'package:e_commerce/screens/loginScreens/HomeScreen.dart';
import 'package:e_commerce/screens/loginScreens/WomensTops.dart';
import 'package:flutter/material.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        elevation: 0.5,
        leading: IconButton(
          icon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        return const HomeScreen();
                      }));
                    },
                    child: const Text(
                      "View all items",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Choose Category",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WomensTops();
                  }));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 40, top: 15),
                      child: const Text(
                        "tops",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Divider(
                      height: 2,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: const Text(
                  "Cardigans & Sweaters",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "Knitwear",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "Blazers",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "Outerwear",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "Pants",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "jeans",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "shorts",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "skirts",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "Dresses",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "skirts",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(left: 40, top: 15),
                  child: const Text(
                    "skirts",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

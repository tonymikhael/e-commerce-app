import 'package:e_commerce/material.dart';
import 'package:e_commerce/menCategory.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyMaterial().bgColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 44,
                    alignment: Alignment.center,
                    child: Text(
                      "Women",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    height: 44,
                    alignment: Alignment.center,
                    child: Text(
                      "Men",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 44,
                    alignment: Alignment.center,
                    child: Text(
                      "Kids",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 343,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SUMMER SALES",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Text(
                    "Up to 50% off",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MenCategory();
                }));
              },
              child: Container(
                width: 343,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text(
                        "new",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/newImage.png'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MenCategory();
                }));
              },
              child: Container(
                width: 343,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text(
                        "Shoes",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/shoes.png'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MenCategory();
                }));
              },
              child: Container(
                width: 343,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text(
                        "clothes",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/clothes.png'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MenCategory();
                }));
              },
              child: Container(
                width: 343,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text(
                        "accesories",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/accesories.png'))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

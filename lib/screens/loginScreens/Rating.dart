import 'package:e_commerce/screens/loginScreens/Brand.dart';
import 'package:e_commerce/screens/loginScreens/HomeScreen.dart';
import 'package:flutter/material.dart';

import '../../material.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  List<bool> isHelpful = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> rating = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: MyMaterial().bgColor,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating&Reviews",
                    style: TextStyle(color: Colors.black, fontSize: 34),
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "4.3",
                            style: TextStyle(color: Colors.black, fontSize: 44),
                          ),
                          Text(
                            "23 rating",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      //column of stars
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 114,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 40,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 30,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 20,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: 10,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "19",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "9",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "4",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 33),
                  Row(
                    children: [
                      Text(
                        "8 Reviews",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 44,
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 8,
            itemBuilder: (context, int index) {
              return Padding(
                padding: EdgeInsets.all(14),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 300,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "Tony mikhael",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 9),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                Text(
                                  "june 5,2023",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Text(
                                "The dress is great! Very classy and comfortable. It fit perfectly! I'm 57  130 . I am a 34B chest. This dress would be too long  those who are shorter but could be hemmed. I wouldnt recommend it  those big chested  I am smaller chested and it fit me perfectly"),
                            InkWell(
                              onTap: () {
                                isHelpful[index] = !isHelpful[index];
                                setState(() {});
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Helpful",
                                    style: TextStyle(
                                        color: isHelpful[index]
                                            ? Colors.red
                                            : Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.handshake_outlined,
                                    color: isHelpful[index]
                                        ? Colors.red
                                        : Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: -5,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/me.jpg'),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            context: context,
            builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "What is your rate?",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              rating[0] = !rating[0];
                              setState(() {});
                            },
                            icon: rating[0]
                                ? Icon(
                                    Icons.star,
                                    color: Colors.red,
                                    size: 36,
                                  )
                                : Icon(
                                    Icons.star_border_outlined,
                                    size: 36,
                                  ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border_outlined,
                              size: 36,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border_outlined,
                              size: 36,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border_outlined,
                              size: 36,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border_outlined,
                              size: 36,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Please share your opinion ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "about the product ",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          focusColor: Colors.white,
                          filled: true,
                          hintText: "your review",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 150,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                            gapPadding: 300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Add you photo",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Container(
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
                                "Send Review",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        label: Row(
          children: [
            Icon(Icons.reviews),
            Text(" Write a review"),
          ],
        ),
      ),
    );
  }
}

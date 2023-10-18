import 'package:e_commerce/reusable.dart';
import 'package:e_commerce/screens/loginScreens/Bag.dart';
import 'package:e_commerce/screens/loginScreens/HomeScreen.dart';
import 'package:e_commerce/screens/loginScreens/Shop.dart';
import 'package:e_commerce/screens/loginScreens/SignUp.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              const Image(image: AssetImage('assets/images/homeImage.png')),
              Positioned(
                bottom: 32,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Fashion",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: 160,
                      height: 48,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Shop();
                            }));
                          },
                          child: const Text(
                            "Check",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "New",
                      style: TextStyle(fontSize: 34),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                const Text(
                  "You’ve never seen it before!",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 260,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  const Image(
                                      width: 148,
                                      height: 184,
                                      image: AssetImage(
                                          'assets/images/model1.png')),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 9, top: 8),
                                    child: Container(
                                      width: 40,
                                      height: 24,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(29)),
                                      child: const Text(
                                        "-20%",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
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
                                  Text(
                                    " (10)",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Text(
                                "Shein",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                              const Text(
                                "Evening dress",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "15\$",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "12\$",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 164,
                          child: Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                            ),
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(36))),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Sale",
                      style: TextStyle(fontSize: 34),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                const Text(
                  "You’ve never seen it before!",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 260,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  const Image(
                                      width: 148,
                                      height: 184,
                                      image: AssetImage(
                                          'assets/images/model1.png')),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 9, top: 8),
                                    child: Container(
                                      width: 40,
                                      height: 24,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(29)),
                                      child: const Text(
                                        "New",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
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
                                  Text(
                                    " (10)",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Text(
                                "Shein",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                              const Text(
                                "Evening dress",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "15\$",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "12\$",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 164,
                          child: Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ),
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(36))),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          InkWell(
            onTap: () {},
            child: const Stack(
              children: [
                Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/model2.jpg')),
                Positioned(
                  bottom: 27,
                  right: 18,
                  child: Text(
                    "New Collection",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 186,
                      child: Text(
                        "Summer Sale",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color.fromARGB(255, 239, 237, 237),
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Image(
                            width: MediaQuery.of(context).size.width / 2,
                            image: AssetImage('assets/images/blackModel.png')),
                        Positioned(
                          left: 13,
                          bottom: 37,
                          child: Text(
                            "Black",
                            style: TextStyle(color: Colors.white, fontSize: 34),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Image(
                    width: MediaQuery.of(context).size.width / 2,
                    image: AssetImage('assets/images/menHoodies.png')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

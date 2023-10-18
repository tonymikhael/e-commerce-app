import 'package:e_commerce/screens/loginScreens/CheckOut.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  int bag1 = 1;
  int bag2 = 1;
  int bag3 = 1;
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
            ),
          ),
        ],
        elevation: 0.1,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Bag",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.13,

                color: Colors.white,
                child: Row(
                  children: [
                    const Image(
                      height: 120,
                      image: AssetImage('assets/images/bag1.png'),
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Pull over",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.format_list_bulleted_sharp,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Color :",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Text(
                                "black",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Size :",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Text(
                                "L",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ///////////////////////////////////////
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (bag1 > 1) {
                                    bag1--;
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  width: 30,
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: const Text(
                                    "-",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          color: Colors.grey),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "$bag1",
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  bag1++;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 30,
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: const Text(
                                    "+",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          color: Colors.grey),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "\$51",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.13,

                color: Colors.white,
                child: Row(
                  children: [
                    const Image(
                      height: 120,
                      image: AssetImage('assets/images/bag1.png'),
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Pull over",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.format_list_bulleted_sharp,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Color :",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Text(
                                "black",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Size :",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Text(
                                "L",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (bag2 > 1) {
                                    bag2--;
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  width: 30,
                                  alignment: Alignment.center,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          color: Colors.grey),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Text(
                                    "-",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "$bag2",
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  bag2++;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 30,
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: const Text(
                                    "+",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          color: Colors.grey),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "\$51",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.13,

                color: Colors.white,
                child: Row(
                  children: [
                    const Image(
                      height: 120,
                      image: AssetImage('assets/images/bag1.png'),
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Pull over",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.format_list_bulleted_sharp,
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Color :",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Text(
                                "black",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Size :",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Text(
                                "L",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (bag3 > 1) {
                                    bag3--;
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  width: 30,
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: const Text(
                                    "-",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          color: Colors.grey),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "$bag3",
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  bag3++;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 30,
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: const Text(
                                    "+",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          color: Colors.grey),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "\$51",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "Enter you promo code",
                suffixIcon: const CircleAvatar(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total amount :",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "125\$",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
                      return const CheckOut();
                    }));
                  },
                  child: const Text(
                    "Check out",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

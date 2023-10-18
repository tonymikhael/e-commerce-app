import 'package:e_commerce/material.dart';
import 'package:e_commerce/screens/loginScreens/Rating.dart';
import 'package:e_commerce/screens/loginScreens/Rating.dart';
import 'package:e_commerce/screens/loginScreens/WomensTops.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Rating();
              }));
            },
            icon: Icon(Icons.share_sharp),
            color: Colors.black,
          )
        ],
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
        title: Text(
          "Short dress",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image(
                    image: AssetImage('assets/images/productCard1.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image(
                    image: AssetImage('assets/images/productCard1.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            color: Colors.white,
            // height: MediaQuery.of(context).size.height * 0.25,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 138,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("Size"),
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            style: TextStyle(color: Colors.black),
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: 138,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("Black"),
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down),
                            style: TextStyle(color: Colors.black),
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {
                            isSelected = !isSelected;
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.favorite_outline,
                            color: isSelected ? Colors.white : Colors.grey,
                          ),
                        ),
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: isSelected ? Colors.red : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(36))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "H&M",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "19.99\$",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "short black dress",
                    style: TextStyle(color: Colors.grey),
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
                  Text(
                    "Short dress in soft cotton jersey with decorative buttons down the front and a wide,.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Spacer(
            flex: 2,
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
                      return WomensTops();
                    }));
                  },
                  child: Text(
                    "Add to cart",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

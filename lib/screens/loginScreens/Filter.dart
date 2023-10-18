import 'package:e_commerce/material.dart';
import 'package:e_commerce/screens/loginScreens/Brand.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  bool isSizeSelected1 = false;
  bool isSizeSelected2 = false;
  bool isSizeSelected3 = false;
  bool isSizeSelected4 = false;
  bool isSizeSelected5 = false;
  RangeValues _currentRangeValues = const RangeValues(1, 1000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyMaterial().bgColor,
        title: const Text(
          "filter",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Price range",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("30\$"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("80\$"),
                        ),
                      ],
                    ),
                    RangeSlider(
                      activeColor: Colors.red,
                      values: _currentRangeValues,
                      max: 1000,
                      divisions: 100,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Color",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        isSelected1 = !isSelected1;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            isSelected1 ? Colors.red : Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSelected2 = !isSelected2;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            isSelected2 ? Colors.red : Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSelected3 = !isSelected3;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            isSelected3 ? Colors.red : Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSelected4 = !isSelected4;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            isSelected4 ? Colors.red : Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSelected5 = !isSelected5;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            isSelected5 ? Colors.red : Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSelected6 = !isSelected6;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            isSelected6 ? Colors.red : Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sizes",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        isSizeSelected1 = !isSizeSelected1;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: isSizeSelected1 ? Colors.red : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: const Text(
                          "Xs",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSizeSelected2 = !isSizeSelected2;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: isSizeSelected2 ? Colors.red : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: const Text(
                          "S",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSizeSelected3 = !isSizeSelected3;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: isSizeSelected3 ? Colors.red : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: const Text(
                          "M",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSizeSelected4 = !isSizeSelected4;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: isSizeSelected4 ? Colors.red : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: const Text(
                          "L",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isSizeSelected5 = !isSizeSelected5;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: isSizeSelected5 ? Colors.red : Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: const Text(
                          "XL",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Category",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Text(
                            "All",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Text(
                            "Women",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Text(
                            "Men",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Text(
                            "Girls",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Text(
                            "Boys",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Brand",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "addidas originals , H&m,American Eagles",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Brand();
                            }));
                          },
                          icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Discard",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Apply",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

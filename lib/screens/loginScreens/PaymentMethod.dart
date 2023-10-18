import 'package:flutter/material.dart';

import '../../material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool? p1 = false;
  bool? p2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyMaterial().bgColor,
        title: Text(
          "Payment Method",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your payment card",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/card2.png'),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.black,
                    value: p1,
                    onChanged: (boo1) {
                      p1 = boo1;
                      setState(() {});
                    }),
                Text("Use as default payment mehtod"),
              ],
            ),
            Text(
              "Your payment card",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/card3.png'),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.black,
                    value: p2,
                    onChanged: (boo2) {
                      p2 = boo2;
                      setState(() {});
                    }),
                Text("Use as default payment mehtod"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          label: Text(
            "+",
          )),
    );
  }
}

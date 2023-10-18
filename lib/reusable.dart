// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TExtFieldREusable extends StatelessWidget {
  TExtFieldREusable({this.lable, this.icon});
  String? lable;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 64,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(179, 173, 172, 172),
              blurRadius: 5,
              spreadRadius: 1),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Colors.green,
            ),
            hintText: lable!,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonReusable extends StatelessWidget {
  ElevatedButtonReusable({this.label, this.navigation});
  String? label;
  Widget? navigation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 343,
        height: 48,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return navigation!;
              }));
            },
            child: Text(
              label!,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}

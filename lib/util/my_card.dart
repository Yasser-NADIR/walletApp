// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balnace;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color;

  const MyCard({Key? key, required this.balnace, required this.cardNumber, required this.expiryMonth, required this.expiryYear, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Text(
            "Balance",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$$balnace",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "$cardNumber",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "$expiryMonth/$expiryYear",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({required this.iconImagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10),
              ]),
          child: Image.asset(iconImagePath),
        ),
        SizedBox(height: 12),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        )
      ],
    );
  }
}

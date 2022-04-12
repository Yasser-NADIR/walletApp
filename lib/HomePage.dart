// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/util/my_button.dart';
import 'package:wallet/util/my_card.dart';
import 'package:wallet/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () => true,
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(
                Icons.home,
                size: 32,
              )
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(
                Icons.settings,
                size: 32,
              )
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "My ",
                          style:
                              TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cards",
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  height: 200,
                  child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyCard(
                          balnace: 5250,
                          cardNumber: 12345678,
                          color: Colors.deepPurple[300]!,
                          expiryMonth: 11,
                          expiryYear: 33),
                      MyCard(
                          balnace: 4398.22,
                          cardNumber: 87341287,
                          color: Color.fromARGB(255, 25, 160, 95),
                          expiryMonth: 06,
                          expiryYear: 25),
                      MyCard(
                          balnace: 3208.44,
                          cardNumber: 49274027,
                          color: Colors.blueAccent,
                          expiryMonth: 5,
                          expiryYear: 35),
                    ],
                  ),
                ),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconImagePath: "lib/icons/send-money.png",
                      buttonText: "Send",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/credit-card.png",
                      buttonText: "Pay",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/bill.png",
                      buttonText: "Bills",
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    MyListTile(
                      iconImagePath: "lib/icons/analysis.png",
                      tileTitle: "Statistics",
                      tileSubTitle: "payments and icomes",
                    ),
                    MyListTile(
                      iconImagePath: "lib/icons/transaction.png",
                      tileTitle: "Transactions",
                      tileSubTitle: "transactions history",
                    )
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

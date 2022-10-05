// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_7/WIdgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'Home Screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Go-Snacko',
          style: TextStyle(color: Colors.black87, fontSize: 40),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF31C6D4),
        leading: IconButton(
          icon: const Icon(
            Icons.account_circle_sharp,
            size: 45,
            color: Color(0xFF00FFD1),
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_sharp,
              size: 45,
              color: Color(0xFF00FFD1),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFF00FFD1),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffFF1E1E), width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF31C6D4), width: 2)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffFF1E1E),
                  size: 45,
                ),
                hintText: 'Search Food or Restaurants',
                hintStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                ),
              ),
              style: TextStyle(fontSize: 30, color: Colors.black87),
              showCursor: false,
            ),
          ),
          RecentOrders(),
        ],
      ),
    );
  }
}

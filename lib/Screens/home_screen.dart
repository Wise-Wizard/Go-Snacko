// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_7/Menu/data.dart';
import 'package:flutter_application_7/Models/restaurant.dart';
import 'package:flutter_application_7/WIdgets/rating.dart';
import 'package:flutter_application_7/WIdgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'Home Screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurants) {
      restaurantList.add(
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF00FFD1),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xffFF1E1E), width: 2),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(restaurants.imageUrl),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurants.name,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Rating(restaurants.rating),
                    Text(
                      restaurants.address,
                      style: TextStyle(color: Colors.black87, fontSize: 24),
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
    return Column(
      children: restaurantList,
    );
  }

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
        physics: BouncingScrollPhysics(),
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
          _buildRestaurants(),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_7/Menu/data.dart';
import 'package:flutter_application_7/Models/order.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);
  _buildOrderHistory(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF00FFD1),
        border: Border.all(width: 2, color: Color(0xffFF1E1E)),
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                width: 130,
                height: 130,
                image: AssetImage(order.food.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.food.name,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  order.restaurant.name,
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                Text(
                  order.date,
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(
                0xffFF1E1E,
              ),
              child: Icon(
                Icons.add,
                size: 35,
                color: Color(0xFF31C6D4),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Order History',
          style: TextStyle(color: Colors.black87, fontSize: 35),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 130,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order order = currentUser.orders[index];
              return _buildOrderHistory(context, order);
            },
          ),
        ),
      ],
    );
  }
}

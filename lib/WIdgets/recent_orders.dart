// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_7/Menu/data.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Recent Orders',
          style: TextStyle(color: Colors.black87, fontSize: 35),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 120,
          color: Colors.black,
          child: ListView.builder(
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              return Container();
            },
          ),
        ),
      ],
    );
  }
}

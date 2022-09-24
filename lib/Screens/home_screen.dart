// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cashfree_pg/cashfree_pg.dart';
import 'package:flutter_application_7/transaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Manager'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.all(30),
          child: TextField(),
        ),
        ElevatedButton(onPressed: doTransaction, child: Text('Pay'))
      ]),
    );
  }
}

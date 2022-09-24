// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_7/Transaction/transaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final amountController = TextEditingController();
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
          child: TextField(
            controller: amountController,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.currency_rupee_outlined),
                hintText: 'Enter Amount in Rupees'),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              doTransaction(amountController.text.trim(), context);
            },
            child: Text('Pay'))
      ]),
    );
  }
}

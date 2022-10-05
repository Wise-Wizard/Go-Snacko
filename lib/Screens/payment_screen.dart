// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_7/Transaction/transaction.dart';

class PaymentScreen extends StatefulWidget {
  static String id = 'Payment Screen';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Payment Screen',
          style: TextStyle(color: Colors.black87, fontSize: 40),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF31C6D4),
      ),
      backgroundColor: Color(0xFF00FFD1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 35, right: 35),
            child: Image(
                image: AssetImage('Payment_Images/bank-1300155__340.webp')),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 35, right: 35, top: 35, bottom: 20),
            child: TextField(
              autofocus: true,
              controller: amountController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffFF1E1E), width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF31C6D4), width: 2)),
                prefixIcon: Icon(
                  Icons.currency_rupee_outlined,
                  color: Color(0xffFF1E1E),
                  size: 45,
                ),
                hintText: 'Enter Amount',
                hintStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                ),
              ),
              style: TextStyle(fontSize: 30, color: Colors.black87),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              showCursor: false,
            ),
          ),
          MaterialButton(
            onPressed: () {
              doTransaction(amountController.text.trim(), context);
            },
            padding: EdgeInsets.only(left: 38, right: 38, top: 10, bottom: 10),
            color: Color(0xFF31C6D4),
            splashColor: Color(0xffFF1E1E),
            elevation: 5,
            child: Text(
              'Proceed to Payment',
              style: TextStyle(color: Colors.black87, fontSize: 30),
            ),
          ),
          Divider(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PayIcons(imageUrl: 'Payment_Images/paypal.png'),
              PayIcons(imageUrl: 'Payment_Images/icons8-phone-pe-512.png'),
              PayIcons(
                imageUrl: 'Payment_Images/bank.png',
              ),
              PayIcons(
                imageUrl: 'Payment_Images/wallet-filled-money-tool.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PayIcons extends StatelessWidget {
  final imageUrl;
  PayIcons({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        imageUrl,
      ),
      height: 60,
      width: 60,
    );
  }
}

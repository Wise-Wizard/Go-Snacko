import 'package:flutter/material.dart';
import 'package:flutter_application_7/Screens/payment_screen.dart';

void main() {
  runApp(const CashApp());
}

class CashApp extends StatelessWidget {
  const CashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'EBGaramond'),
      home: const PaymentScreen(),
    );
  }
}

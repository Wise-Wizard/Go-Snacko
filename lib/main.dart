import 'package:flutter/material.dart';
import 'package:flutter_application_7/Screens/home_screen.dart';

void main() {
  runApp(const CashApp());
}

class CashApp extends StatelessWidget {
  const CashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      highContrastDarkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

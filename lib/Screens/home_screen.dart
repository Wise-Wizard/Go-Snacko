import 'package:flutter/material.dart';
import 'package:cashfree_pg/cashfree_pg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: Colors.white,
        ),
        Container(
          color: Colors.blue,
        )
      ]),
    );
  }
}

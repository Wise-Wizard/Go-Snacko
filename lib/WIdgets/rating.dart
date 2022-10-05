// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Rating(int rating) {
  List<Widget> Stars = [];
  for (int i = 0; i < rating; i++) {
    Stars.add(
      const Text(
        '🌟',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: Stars,
  );
}

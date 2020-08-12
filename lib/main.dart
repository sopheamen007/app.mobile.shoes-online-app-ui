import 'package:flutter/material.dart';
import 'package:modern_online_app/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Averta'
    ),
    home: HomePage(),
  ));
}


import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/entry/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ease', 
      home: welcomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: tdWhite,
        useMaterial3: true
      ),);
  }
}
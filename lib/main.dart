import 'package:flutter/material.dart';
import 'package:ticketbooking_app/screens/bottom_bar.dart';
import 'package:ticketbooking_app/screens/spalsh_page.dart';
import 'package:ticketbooking_app/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: primary),
      debugShowCheckedModeBanner: false,
      home: SpalshPage(),
    );
  }
}

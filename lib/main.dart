import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
   GetMaterialApp(
    home: SplashScreen(),
   )
      )
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:new_resaurant_app/Screens/home_page.dart';

void main() {
  runApp(const NewResaurantApp());
}

class NewResaurantApp extends StatelessWidget {
  const NewResaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

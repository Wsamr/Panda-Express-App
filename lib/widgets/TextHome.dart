import 'package:flutter/material.dart';

class Texthome extends StatelessWidget {
  Texthome({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        fontFamily: "Oswald",
      ),
    );
  }
}

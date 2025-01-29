import 'package:flutter/material.dart';

class Foodimagecontainer extends StatelessWidget {
  Foodimagecontainer({super.key, path});
  String? path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(path!),
        ),
      ),
    );
  }
}

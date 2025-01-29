import 'package:flutter/material.dart';
import 'package:new_resaurant_app/widgets/FoodImageContainer.dart';

class Foodimglistr extends StatelessWidget {
  Foodimglistr({super.key});
  List<String> images = [
    "https://tse3.mm.bing.net/th?id=OIP.9nl2eFOD4SKNC_FIn0bSqQHaFj&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.cFk7icN483HJD3wFnXXyawHaEo&pid=Api&P=0&h=220",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) => Foodimagecontainer(
          path: images[index],
        ),
      ),
    );
  }
}

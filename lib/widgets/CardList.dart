import 'package:flutter/material.dart';
import 'package:new_resaurant_app/models/CardClass.dart';
import 'package:new_resaurant_app/widgets/CardFood.dart';

class CardList extends StatelessWidget {
  CardList({super.key});
  List<CardClass> card = [
    CardClass(
        image: "assets/images/824127ed-64dc-450f-a745-fe3e9f5f774c.png",
        title: "Burger",
        subTitle: "\$\25",
        backColor: Color(0xffF7DEDA),
        fontColor: const Color.fromARGB(255, 231, 73, 62)),
    CardClass(
        image: "assets/images/25420e83-3835-4b81-9df5-31394bf5feb3.png",
        title: "Pizza",
        subTitle: "\$\25",
        backColor: Color(0xffFFE8B4),
        fontColor: Color.fromARGB(255, 209, 152, 17)),
    CardClass(
        image: "assets/images/5194e5c3-cd24-4a7b-93a6-18fc5286aeeb.png",
        title: "Donut",
        subTitle: "\$\25",
        backColor: Color(0xffCEF8C6),
        fontColor: Color.fromARGB(255, 52, 196, 24)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: card.length,
          itemBuilder: (context, index) {
            return Cardfood(c: card[index]);
          }),
    );
  }
}

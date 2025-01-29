import 'package:flutter/material.dart';
import 'package:new_resaurant_app/widgets/CardList.dart';
import 'package:new_resaurant_app/widgets/CustomField.dart';
import 'package:new_resaurant_app/widgets/FoodImageContainer.dart';
import 'package:new_resaurant_app/widgets/FoodImgListr.dart';
import 'package:new_resaurant_app/widgets/TabCatogray.dart';
import 'package:new_resaurant_app/widgets/TextHome.dart';
import 'package:new_resaurant_app/widgets/circle_button.dart';

import '../models/CardClass.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<CardClass> card = [
    CardClass(
        image: "",
        title: "Burger",
        subTitle: "\$\25",
        backColor: const Color(0xffF7DEDA),
        fontColor: const Color.fromARGB(255, 231, 73, 62))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                CircleButton(
                  color: Color(0xffF4EEF5),
                  icon: Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
            Texthome(text: "ONLINE FOOD"),
            Texthome(text: "SERVICES"),
            CustomFieldText(
              color: Color.fromARGB(255, 200, 232, 241).withOpacity(.5),
              borderSideColor: Colors.blueGrey,
              icon: Icon(Icons.search),
              textinfiled: "Search",
            ),
            Catogrytabs(),
            CardList(),
          ],
        ),
      ),
    );
  }
}

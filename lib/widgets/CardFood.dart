import 'package:flutter/material.dart';
import 'package:new_resaurant_app/models/CardClass.dart';

class Cardfood extends StatelessWidget {
  Cardfood({super.key, required this.c});

  CardClass c;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        height: 240,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: c.backColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(c.image),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                c.title,
                style: TextStyle(
                  color: c.fontColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                c.subTitle,
                style: TextStyle(
                  color: c.fontColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

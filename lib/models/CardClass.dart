import 'package:flutter/material.dart';
import 'package:new_resaurant_app/widgets/CardFood.dart';

class CardClass {
  String image;
  String title;
  String subTitle;
  Color backColor;
  Color fontColor;

  CardClass({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.backColor,
    required this.fontColor,
  });
}

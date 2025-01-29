import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  CircleButton({super.key, required this.icon, required this.color});
  Icon icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundColor: color,
        child: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: icon,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.8),
            spreadRadius: .5,
            blurRadius: 3,
          )
        ],
      ),
    );
  }
}

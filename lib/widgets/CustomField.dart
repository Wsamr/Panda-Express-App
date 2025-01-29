import 'package:flutter/material.dart';

class CustomFieldText extends StatelessWidget {
  CustomFieldText({
    super.key,
    required this.color,
    required this.borderSideColor,
    required this.icon,
    required this.textinfiled,
  });
  Color color;
  Color borderSideColor;
  Icon icon;
  String textinfiled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            icon,
            SizedBox(
              width: 10,
            ),
            Text(textinfiled),
          ],
        ),
        fillColor: color,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderSideColor),
        ),
      ),
    );
  }
}

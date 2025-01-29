import 'package:flutter/material.dart';

class Catogrytabs extends StatefulWidget {
  const Catogrytabs({super.key});

  @override
  State<Catogrytabs> createState() => _CatogrytabsState();
}

class _CatogrytabsState extends State<Catogrytabs> {
  List catogres = ["FEATURED", "COMBOS", "FAVORITES", "POPULAR"];
  int selectedItme = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catogres.length,
              itemBuilder: (context, index) => buildCatogray(index),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCatogray(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItme = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 45),
        child: Column(
          children: [
            Text(
              catogres[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedItme == index ? Colors.black : Colors.grey,
                fontSize: 18,
                fontFamily: "Oswald",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

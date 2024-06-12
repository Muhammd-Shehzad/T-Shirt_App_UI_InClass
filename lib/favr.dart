import 'package:flutter/material.dart';

class favorite extends StatefulWidget {
  favorite({super.key});

  @override
  State<favorite> createState() => _favoriteState();
}

bool isFav = false;

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: () => setState(() {
            isFav = !isFav;
          }),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 34, 49),
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle),
            child: Icon(
              Icons.favorite,
              color: isFav ? Colors.red : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

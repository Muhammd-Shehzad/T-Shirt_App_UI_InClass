import 'package:flutter/material.dart';

class DoneOrder extends StatefulWidget {
  DoneOrder({super.key, required});

  @override
  State<DoneOrder> createState() => _DoneOrderState();
}

class _DoneOrderState extends State<DoneOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 34, 49),
      body: Column(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 180,
            width: 490,
          ),
          Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 36, 34, 49),
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 36, 34, 49),
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Congratulations For \n  Online Shoping',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/logos.png',
            height: 400,
            width: 400,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) {
                    return DoneOrder();
                  },
                ),
              );
            },
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 34, 49),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Center(
                child: Text(
                  'BUY NOW',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gridview_builder_parrot_app/done_order.dart';

class ConfirmOrder extends StatelessWidget {
  ConfirmOrder(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  final name;
  final image;
  final price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 34, 49),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 34, 49),
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 34, 49),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Parrots',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 36, 34, 49),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.menu_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 36, 34, 49),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      price,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(image),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 36, 34, 49),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(
              child: Text(
                'Single or Pair',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 36, 34, 49),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 36, 34, 49),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
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

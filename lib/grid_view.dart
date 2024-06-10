import 'package:flutter/material.dart';

class GVbuilder extends StatelessWidget {
  const GVbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;

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
            'Pets ',
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemCount: 4,
        itemBuilder: (contex, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/1.png',
                      height: 200,
                      width: 100,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gridview_builder_parrot_app/confirm_order.dart';
import 'package:gridview_builder_parrot_app/favr.dart';

class GVbuilder extends StatefulWidget {
  GVbuilder({super.key});

  @override
  State<GVbuilder> createState() => _GVbuilderState();
}

class _GVbuilderState extends State<GVbuilder> {
  List Images = [
    'assets/1.png',
    'assets/african.png',
    'assets/bluefisher.png',
    'assets/goldenfinch.png',
    'assets/grey_coc.png',
    'assets/ma1.png',
    'assets/paral.png'
  ];

  List Name = [
    'Ring Nack',
    'African Grey',
    'Blue Fishr',
    'Golden Finch',
    'Grey Cocktail',
    'Blue Macow',
    'Charkol Cocktail'
  ];

  List Price = ['Rs:5k', 'Rs:40k', '5k', 'Rs:8k', 'Rs:2k', 'Rs:1Lac', 'Rs:3k'];

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
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 1.7,
            mainAxisExtent: 500,
          ),
          itemCount: 7,
          itemBuilder: (contex, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 36, 34, 49),
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        favorite(),
                        Image.asset(
                          Images[index],
                          // height: 150,
                          height: ScreenHeight * .3,
                          width: ScreenWidth * .3,
                          // width: 180,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          Name[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            Price[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) {
                          return ConfirmOrder(
                            image: Images[index],
                            name: Name[index],
                            price: Price[index],
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 36, 34, 49),
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'BUY NOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

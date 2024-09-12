import 'package:flutter/material.dart';

class Itemswidget extends StatelessWidget {
   Itemswidget({super.key});

  List<String> myProductName =[
    'Dasi',
    'Sepatu',
    'Seragam 1',
    'Seragam 2',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 10,
      shrinkWrap: true,
      children: [

        for (int i = 0; i < myProductName.length; i++)

        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 106, 231),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '-50%',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.red,)
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'ItemPage');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset('image/${i + 1}.jpeg',
                  width: 100,
                  height: 100,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  myProductName[i],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 3, 117, 210),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Write Description Of Product',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 3, 117, 210),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '/$55',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 3, 117, 210),
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
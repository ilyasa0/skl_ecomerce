
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skl_ecomerce/fearures/checkout/pages/checkout.dart';

import '../../../../preferences/color.dart';
import '../model/model.dart';

part  'section/section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Products> products =const[
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair.png',
        price: '\$ 654'
    ),
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair1.png',
        price: '\$ 123'
    ),
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair2.png',
        price: '\$ 2134'
    ),
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair3.png',
        price: '\$ 9999'
    ),Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair.png',
        price: '\$ 654'
    ),
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair1.png',
        price: '\$ 123'
    ),
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair2.png',
        price: '\$ 2134'
    ),
    Products(
        desc: 'Lorem Ipsum',
        title: 'Lorem Ipsum',
        img: 'assets/images/chair3.png',
        price: '\$ 9999'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
            children: [
      Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             top_navbar(),

            const SizedBox(
              height: 30,
            ),

            ///
            ///
             ColectionCard(),
            const SizedBox(height: 22,),
            const Text('BEST SELLING',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),),
            const SizedBox(height: 20,),

            bestSelling(products: products),

            const SizedBox(height:20 ,),
            const Text('Trending',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),),
            const SizedBox(height: 20,),
            Trending(products: products)
          ],
        ),
      ),
    ]));
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../preferences/color.dart';
import '../models/model.dart';

part 'sections/section.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  final List<Products> products = const [
    Products(
        title: 'simple Chair',
        img: 'assets/images/chair.png',
        price: '\$200',
        quantity: '9',
        colorProduct: 'Lime'),
    Products(
        title: 'good Chair',
        img: 'assets/images/chair1.png',
        price: '\$240',
        quantity: '8',
        colorProduct: 'green'),
    Products(
        title: 'Exclusive Chair',
        img: 'assets/images/chair3.png',
        price: '\$20000',
        quantity: '1',
        colorProduct: 'gold'),
    Products(
        title: 'century Chair',
        img: 'assets/images/chair2.png',
        price: '\$90000000',
        quantity: '3',
        colorProduct: 'light blue'),
    Products(
        title: 'simple Chair',
        img: 'assets/images/chair.png',
        price: '\$200',
        quantity: '9',
        colorProduct: 'Lime'),
    Products(
        title: 'good Chair',
        img: 'assets/images/chair1.png',
        price: '\$240',
        quantity: '8',
        colorProduct: 'green'),
    Products(
        title: 'Exclusive Chair',
        img: 'assets/images/chair3.png',
        price: '\$20000',
        quantity: '1',
        colorProduct: 'gold'),
    Products(
        title: 'century Chair',
        img: 'assets/images/chair2.png',
        price: '\$90000000',
        quantity: '3',
        colorProduct: 'light blue'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: const Text('Your Cart'),
                backgroundColor: Colors.white,
              ),
                 listCart(products: products),
            ],
          ),
        ),
      ),
    );
  }
}


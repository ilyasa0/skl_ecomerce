import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skl_ecomerce/fearures/checkout/pages/checkout.dart';
import 'package:skl_ecomerce/fearures/checkout/pages/section/section.dart';
import 'package:skl_ecomerce/fearures/otw/otw.dart';
import 'package:skl_ecomerce/fearures/payment/payment.dart';
import 'package:skl_ecomerce/preferences/color.dart';
import 'package:skl_ecomerce/preferences/icon.dart';

import 'fearures/bag/pages/page.dart';
import 'fearures/home/page/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        icon: Icon(
          icon,
          color: selectedIndex == index
              ? const Color(0xff81A8F7)
              : const Color(0XFFB1B3BA),
        ));
  }

  List<Widget> pages = const [
    HomePage(),
    BagPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFFEFEFE),
        body: pages[selectedIndex],
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnTheWay()));
          },
          backgroundColor:  CustomColor.primaryColor,
          shape: const CircleBorder(),
          child: const Icon(CupertinoIcons.bookmark)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            height: 80,
            color: CustomColor.secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildItemNav(Icons.home, 0,),
                const SizedBox(
                  width: 40,
                ),
                buildItemNav(CupertinoIcons.bag, 1),
              ],
            ),
          ),
        ));
  }
}

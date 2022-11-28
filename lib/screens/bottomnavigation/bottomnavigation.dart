// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:bucket/screens/bottomnavigation/widgets/account/account.dart';
import 'package:bucket/screens/bottomnavigation/widgets/categories/categories.dart';

import 'package:bucket/screens/bottomnavigation/widgets/oders/orders.dart';
import 'package:bucket/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class BottomnavigationBar extends StatefulWidget {
  BottomnavigationBar({super.key});

  @override
  State<BottomnavigationBar> createState() => _BottomnavigationBarState();
}

class _BottomnavigationBarState extends State<BottomnavigationBar> {
  final List pages = [
    const Homescreen(),
    Categories(
      category_name: 'df',
    ),
    Orders(),
    const Account()
  ];

  int currentIndex = 0;
  void changeIndex(newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromARGB(255, 138, 20, 12),
          currentIndex: currentIndex,
          onTap: (value) {
            changeIndex(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/51gWctT0yRS._AC._SR360,460.jpg',
                scale: 12,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.badge), label: 'My Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'Account')
          ]),
      body: pages[currentIndex],
    );
  }
}

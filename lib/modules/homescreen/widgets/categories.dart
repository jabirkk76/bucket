// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({
    required this.image,
    required this.categoryname,
    Key? key,
  }) : super(key: key);
  String image;
  String categoryname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                categoryname,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 77, 76, 76)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

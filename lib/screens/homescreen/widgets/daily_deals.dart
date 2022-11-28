// ignore_for_file: sort_child_properties_last, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class lowprice extends StatelessWidget {
  lowprice({
    required this.image,
    required this.dailydealcat,
    Key? key,
  }) : super(key: key);
  String image;
  String dailydealcat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
              ),
              const Divider(
                thickness: 3,
              ),
              Text(
                dailydealcat,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 77, 76, 76)),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 78, left: 10),
            child: Container(
              child: const Center(
                child: Text(
                  'MIN 10 % OFF',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 21, 33, 100),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              height: 20,
              width: 80,
            ),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: sort_child_properties_last, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class low_price extends StatelessWidget {
  low_price({
    required this.discount,
    required this.image,
    required this.lowpricecat,
    Key? key,
  }) : super(key: key);
  String image;
  String lowpricecat;
  String discount;

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
                lowpricecat,
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
            padding: const EdgeInsets.only(top: 77, left: 10),
            child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Under',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.currency_rupee_sharp,
                      size: 10,
                    ),
                    Text(
                      discount,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 171, 69),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              height: 20,
              width: 83,
            ),
          )
        ],
      ),
    );
  }
}

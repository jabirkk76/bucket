// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class Trend extends StatelessWidget {
  Trend({
    required this.image,
    required this.store,
    Key? key,
  }) : super(key: key);
  String image;
  String store;

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Container(
                          child: Center(
                            child: Text(
                              store,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 239, 171, 69),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 20,
                          width: 83,
                        ),
                      ),
                    )
                  ],
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                store,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 124, 17, 10)),
              ),
              const SizedBox(
                height: 13,
              )
            ],
          ),
        ],
      ),
    );
  }
}

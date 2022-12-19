// ignore_for_file: sort_child_properties_last, must_be_immutable, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class clothessoffer extends StatelessWidget {
  clothessoffer(
      {Key? key,
      required this.clothes,
      required this.details,
      required this.offerless,
      required this.underlinedprice,
      required this.specialpriceoffer,
      required this.rating})
      : super(key: key);
  String clothes;
  String details;
  String offerless;
  String underlinedprice;
  String specialpriceoffer;
  String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 192,
      child: Column(
        children: [
          Container(
            width: 179,
            height: 150,
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 216, 215, 215)),
                image: DecorationImage(
                    image: NetworkImage(clothes), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromARGB(255, 219, 216, 216))),
              child: Column(
                children: [
                  Text(
                    details,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Color.fromARGB(255, 168, 166, 166)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      offerless,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Text(
                                      underlinedprice,
                                      style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 131, 130, 130)),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Special Offer',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 96, 95, 95)),
                                    ),
                                  )
                                ],
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 22, top: 10),
                                  child: Container(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.currency_rupee_sharp,
                                            color: Colors.green,
                                            size: 13,
                                          ),
                                          Text(
                                            specialpriceoffer,
                                            style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    ),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      color: Color.fromARGB(255, 231, 239, 231),
                                    ),
                                    height: 22,
                                    width: 125,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Icon(
                              Icons.currency_rupee_sharp,
                              size: 14,
                            ))
                      ],
                    ),
                  ),
                  const Text(
                    'Free Delivery',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color.fromARGB(255, 127, 126, 126)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            rating,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white),
                          ),
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.white,
                          )
                        ],
                      ),
                      height: 25,
                      width: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Color.fromARGB(255, 34, 118, 37)),
                    ),
                  )
                ],
              ),
              height: 129,
              width: 179,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bucket/Api/API/Model/model.dart';
import 'package:bucket/Api/API/Model/trending.dart';
import 'package:bucket/Api/API/Service/trending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../clotheswithoffer.dart';

class OfferClothes extends StatelessWidget {
  const OfferClothes(
      {Key? key,
      required this.img,
      required this.crossPriceOffer,
      required this.detail,
      required this.offer,
      required this.rating,
      required this.specialOffer})
      : super(key: key);
  final String img;
  final String detail;
  final String offer;
  final String crossPriceOffer;
  final String specialOffer;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 500,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.fill)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          detail,
          style: const TextStyle(
              color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Icon(
                Icons.currency_rupee_sharp,
                size: 15,
              ),
              Text(
                offer,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 5),
                child: Text(
                  crossPriceOffer,
                  style: const TextStyle(
                      fontSize: 11,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 2),
                child: Text(
                  'off',
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 2),
                child: Text(
                  'onwards',
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 131, 130, 130)),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          child: Center(
            child: Text(
              specialOffer,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color.fromARGB(255, 21, 83, 23)),
            ),
          ),
          height: 20,
          width: 140,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 204, 233, 205),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          child: Center(
            child: Text(
              rating,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white),
            ),
          ),
          height: 20,
          width: 50,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 20, 126, 23),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
      ],
    );
  }
}

// ignore_for_file: sort_child_properties_last, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class Sarees extends StatelessWidget {
  Sarees({
    required this.type_of_saree,
    required this.image,
    Key? key,
  }) : super(key: key);
  String image;

  String type_of_saree;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        Text(
          type_of_saree,
          style: const TextStyle(fontSize: 11),
        )
      ],
    );
  }
}

// ignore_for_file: sort_child_properties_last, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class clothes extends StatelessWidget {
  clothes({Key? key, required this.image, required this.data})
      : super(key: key);
  String image;
  String data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
              border: Border.all()),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromARGB(255, 219, 216, 216))),
            child: Center(child: Text(data)),
            height: 40,
            width: 180,
          ),
        )
      ],
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'carouselsider.dart';

//1.  import carousine package into pubspecc.yaml
//2.  create carouse.dart page
//3.  create banner_view.dart page
//4.  call carause page where the slider is wanted to show.....<finished>
class BannerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarauselSlider(),
      ],
    );
  }
}

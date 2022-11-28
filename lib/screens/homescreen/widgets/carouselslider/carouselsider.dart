// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarauselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      //1st Image of Slider
      items: List.generate(
        4,
        (index) => Center(
          child: Stack(
            children: [
              Container(
                height: 169,
                width: 361,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/image 4.png'),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
      ),

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 2.0,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}

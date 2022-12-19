import 'package:flutter/cupertino.dart';

import '../trend.dart';

class TrendingCategory extends StatelessWidget {
  const TrendingCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 144,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Trend(
              image: 'assets/images (13).jfif',
              store: 'Branded Footwear',
            ),
            Trend(
              image: 'assets/a1.jfif',
              store: 'Winter Store',
            ),
            Trend(
              image: 'assets/a2.jfif',
              store: 'Wedding Store',
            ),
            Trend(
              image: 'assets/a3.jfif',
              store: 'Combo Store',
            ),
            Trend(
              image: 'assets/a4.jfif',
              store: 'Budget Fashion',
            ),
            Trend(
              image: 'assets/a5.jfif',
              store: 'Ossom Planet',
            ),
          ],
        ));
  }
}

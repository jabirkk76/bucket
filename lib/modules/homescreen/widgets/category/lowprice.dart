import 'package:flutter/material.dart';

import '../../../../low_price.dart';

class LowPriceCategory extends StatelessWidget {
  const LowPriceCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (ctx, index) {
            return Row(
              children: [
                low_price(
                  discount: 'Under 299',
                  image: 'assets/images (12).jfif',
                  lowpricecat: 'Bags & Watches',
                ),
                low_price(
                  image: 'assets/a.jfif',
                  discount: ' 399',
                  lowpricecat: 'Footwear',
                ),
                low_price(
                  image: 'assets/b.jfif',
                  discount: ' 199',
                  lowpricecat: 'Accessories',
                ),
                low_price(
                  image: 'assets/c.jfif',
                  discount: ' 299',
                  lowpricecat: 'Shirt & Tshirts',
                ),
                low_price(
                  image: 'assets/d.jfif',
                  discount: ' 299',
                  lowpricecat: 'Bags & Accessories',
                ),
                low_price(
                  image: 'assets/e.jfif',
                  discount: ' 299',
                  lowpricecat: 'Kids Store',
                ),
                low_price(
                  image: 'assets/f.jfif',
                  discount: ' 199',
                  lowpricecat: 'Electronics',
                ),
                low_price(
                  image: 'assets/g.jfif',
                  discount: ' 299',
                  lowpricecat: 'Men Bottomwear',
                ),
                low_price(
                  image: 'assets/h.jfif',
                  discount: ' 199',
                  lowpricecat: 'Men\'s care',
                ),
                low_price(
                  image: 'assets/i.jfif',
                  discount: ' 299',
                  lowpricecat: 'Sarees',
                ),
              ],
            );
          }),
    );
  }
}

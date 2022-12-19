import 'package:flutter/cupertino.dart';

import '../daily_deals.dart';

class LowpriceList extends StatelessWidget {
  const LowpriceList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        itemBuilder: (ctx, index) {
          return Row(
            children: [
              lowprice(
                image: 'assets/download.jfif',
                dailydealcat: 'Electronics',
              ),
              lowprice(
                image: 'assets/download (1).jfif',
                dailydealcat: 'Shirts & Tshirts',
              ),
              lowprice(
                image: 'assets/download (4).jfif',
                dailydealcat: 'Footwear',
              ),
              lowprice(
                image: 'assets/download (5).jfif',
                dailydealcat: 'Kurtis & Suits',
              ),
              lowprice(
                image: 'assets/download (6).jfif',
                dailydealcat: 'Bags & Accessories',
              ),
              lowprice(
                image: 'assets/download (7).jfif',
                dailydealcat: 'Sarees',
              ),
              lowprice(
                image: 'assets/download (8).jfif',
                dailydealcat: 'Kids Store',
              ),
              lowprice(
                image: 'assets/download (9).jfif',
                dailydealcat: 'Jewellery',
              ),
              lowprice(
                image: 'assets/download (10).jfif',
                dailydealcat: 'Western Wear',
              ),
              lowprice(
                image: 'assets/download (11).jfif',
                dailydealcat: 'Kitchen & Home Appliances',
              ),
              lowprice(
                image: 'assets/images (9).jfif',
                dailydealcat: 'Men Grooming',
              ),
              lowprice(
                image: 'assets/download (12).jfif',
                dailydealcat: 'Home Textiles',
              ),
              lowprice(
                image: 'assets/images (10).jfif',
                dailydealcat: 'Inner & Sleepwear',
              ),
              lowprice(
                image: 'assets/download (13).jfif',
                dailydealcat: 'Men Clothing',
              ),
              lowprice(
                image: 'assets/images (11).jfif',
                dailydealcat: 'Daily Essentials',
              ),
              lowprice(
                image: 'assets/download (14).jfif',
                dailydealcat: 'Brands',
              ),
            ],
          );
        });
  }
}

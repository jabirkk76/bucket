// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:bucket/screens/bottomnavigation/widgets/categories/widget/sarees.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key, required this.category_name});
  String category_name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 100,
                    ),
                    child: Text(
                      'Popular',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Column(
                  children: const [
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 10),
                    //   child: Container(
                    //     height: 70,
                    //     width: 80,
                    //     color: Colors.grey,
                    //   ),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/downloadd.png')),
                          const Text(
                            ' Popular',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 220, 12, 81)),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'All Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(25),
                  crossAxisSpacing: 0,
                  childAspectRatio: 1,
                  mainAxisSpacing: 30,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/aa.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Kurthis & Kurthas',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/bb.jfif'),
                          radius: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            'Western Fashions',
                            style: TextStyle(fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/cc.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Men Fashions',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/dd.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Kids Fashions',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ee.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Saree Models',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ff.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Accessories',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/gg.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Jewellery',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/hh.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Beauty',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ii.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Electronics',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/jj.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Footwear',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/kk.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ll.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Kitchen',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/mm.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'home Textiles',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/nn.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Lehengas',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/oo.jfif'),
                          radius: 30,
                        ),
                        Text(
                          'Healthcare',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),

                    // widgets
                  ],
                ),
              ),
              Row(
                children: const [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'WOMEN ETHNIC',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 00),
                    child: Divider(
                      thickness: 2,
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 115),
                child: Text(
                  'Sarees',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  primary: false,
                  padding: const EdgeInsets.all(30),
                  crossAxisSpacing: 0,
                  childAspectRatio: 1,
                  mainAxisSpacing: 30,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Sarees(type_of_saree: 'All Sarees', image: 'assets/s.jfif'),
                    Sarees(
                        type_of_saree: 'Georgette Sarees',
                        image: 'assets/s1.jfif'),
                    Sarees(
                        type_of_saree: 'Chiffon Sarees',
                        image: 'assets/s2.jfif'),
                    Sarees(
                        type_of_saree: 'Cotton Sarees',
                        image: 'assets/s3.jfif'),
                    Sarees(
                        type_of_saree: 'Net Sarees', image: 'assets/s4.jfif'),
                    Sarees(
                        type_of_saree: 'Under 299 ', image: 'assets/s5.jfif'),
                    Sarees(
                        type_of_saree: 'Silk Sarees', image: 'assets/s6.jfif'),
                    Sarees(
                        type_of_saree: 'New collection',
                        image: 'assets/s7.jfif'),
                    Sarees(
                        type_of_saree: 'Bridal Sarees',
                        image: 'assets/s8.jfif'),
                    // widgets
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

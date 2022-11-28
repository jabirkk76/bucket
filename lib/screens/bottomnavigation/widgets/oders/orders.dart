// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bucket/widgets/bottomnavigation/pages/orders/widget/choicechip.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'MY ORDERS',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(Icons.shopping_cart),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 255, top: 10),
              child: Text(
                'Your Orders',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        errorBorder: InputBorder.none,
                        hintText: 'Search by Customer, Product, or Order ID',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 138, 138, 138),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 183, 182, 182),
                        ),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ChoiceChipWidget(
              chipName: ['All', 'Ordered', 'Shipped', 'Delivered'],
            ),
            const ChoiceChipWidget(
              chipName: ['Cancelled', 'Exchange', 'Return', 'Others'],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const Divider(
                          thickness: 6,
                          color: Color.fromARGB(255, 236, 234, 234),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 250, top: 5),
                          child: Text(
                            '25th November',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Color.fromARGB(255, 238, 236, 236),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Ordder ID 4556789932',
                                  style: TextStyle(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Text('Sold to '),
                              ),
                              Text(
                                'Jabir Kk',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Color.fromARGB(255, 238, 236, 236),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Supplier :',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Text(
                                ' REW GETO KOS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Color.fromARGB(255, 238, 236, 236),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ListTile(
                            title: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 200),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 242, 239, 239),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    height: 20,
                                    width: 80,
                                    child: const Center(
                                        child: Text(
                                      'No Margin',
                                      style: TextStyle(fontSize: 10),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 40),
                                  child: Text(
                                      ' Pack of-5, Stylish women duppatas'),
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                const Icon(
                                  Icons.radio_button_checked,
                                  size: 10,
                                  color: Colors.green,
                                ),
                                const Text(
                                  'Delivery by 15 December, 2022',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            leading: Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                              child: Image.asset(
                                'assets/dup.jfif',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Divider(
                            thickness: 6,
                            color: Color.fromARGB(255, 236, 234, 234),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:bucket/screens/homescreen/widgets/carouselslider/banner_view.dart';
import 'package:bucket/screens/homescreen/widgets/categories.dart';
import 'package:bucket/screens/homescreen/widgets/daily_deals.dart';
import 'package:bucket/screens/homescreen/widgets/low_price.dart';
import 'package:bucket/screens/homescreen/widgets/trend.dart';
import 'package:bucket/screens/homescreen/widgets/searchbar/searchbar.dart';
import 'package:bucket/screens/homescreen/widgets/voice_recognition/voicerecorderscreen.dart';
import 'package:flutter/material.dart';

import 'widgets/clothes.dart';
import 'widgets/clotheswithoffer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color _favIconColor = Colors.black;
  static var countdownDuration = const Duration(minutes: 10);
  static var countdownDuration1 = const Duration(minutes: 10);
  Duration duration = const Duration();
  Duration duration1 = const Duration();
  Timer? timer;
  Timer? timer1;
  bool countDown = true;
  bool countDown1 = true;

  @override
  void initState() {
    var hours;
    var mints;
    var secs;
    hours = int.parse("00");
    mints = int.parse("00");
    secs = int.parse("00");
    countdownDuration = Duration(hours: hours, minutes: mints, seconds: secs);
    startTimer();
    reset();
    var hours1;
    var mints1;
    var secs1;
    hours1 = int.parse("10");
    mints1 = int.parse("00");
    secs1 = int.parse("00");
    countdownDuration1 =
        Duration(hours: hours1, minutes: mints1, seconds: secs1);
    startTimer1();
    reset1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 25, left: 10),
                            child: Text(
                              'User',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 25, left: 180),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_favIconColor == Colors.black) {
                                      _favIconColor =
                                          const Color.fromARGB(255, 242, 21, 5);
                                    } else {
                                      _favIconColor = Colors.black;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.favorite,
                                ),
                                color: _favIconColor,
                                tooltip: 'Add to favorite',
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 25, left: 20),
                            child: Icon(
                              Icons.shopping_basket,
                              color: Color.fromARGB(255, 76, 76, 76),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            preferredSize: const Size(300, 80)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            showSearch(context: context, delegate: Searchbar());
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 30,
                          )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: TextField(
                            onTap: () {
                              showSearch(
                                  context: context, delegate: Searchbar());
                            },
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      )),
                      const VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const VoiceSearchingDemo();
                          }));
                        },
                        icon: const Icon(Icons.mic),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_outlined))
                    ],
                  ),
                  height: 40,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      border: Border.all(color: Colors.grey)),
                ),
              ),
              Container(
                  height: 144,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Categories(
                        image: 'assets/1.png',
                        categoryname: 'Categories',
                      ),
                      Categories(
                        image: 'assets/aa.jfif',
                        categoryname: 'Kurti & Suit',
                      ),
                      Categories(
                        image: 'assets/bb.jfif',
                        categoryname: 'Westernwear',
                      ),
                      Categories(
                        image: 'assets/cc.jfif',
                        categoryname: 'Men',
                      ),
                      Categories(
                        image: 'assets/dd.jfif',
                        categoryname: 'Kids',
                      ),
                      Categories(
                        image: 'assets/ee.jfif',
                        categoryname: 'Saree',
                      ),
                      Categories(
                        image: 'assets/ff.jfif',
                        categoryname: 'Accessories',
                      ),
                      Categories(
                        image: 'assets/gg.jfif',
                        categoryname: 'Jewellery',
                      ),
                      Categories(
                        image: 'assets/hh.jfif',
                        categoryname: 'Beauty',
                      ),
                      Categories(
                        image: 'assets/ii.jfif',
                        categoryname: 'Electronics',
                      ),
                      Categories(
                        image: 'assets/jj.jfif',
                        categoryname: 'Footwear',
                      ),
                      Categories(
                        image: 'assets/kk.jfif',
                        categoryname: 'Home',
                      ),
                      Categories(
                        image: 'assets/ll.jfif',
                        categoryname: 'Kitchen',
                      ),
                      Categories(
                        image: 'assets/mm.jfif',
                        categoryname: 'Home Textiles',
                      ),
                      Categories(
                        image: 'assets/nn.jfif',
                        categoryname: 'Lehengas',
                      ),
                      Categories(
                        image: 'assets/oo.jfif',
                        categoryname: 'Healthcare',
                      ),
                    ],
                  )),
              BannerView(),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 42),
                child: Row(
                  children: const [
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.handshake_outlined,
                        color: Color.fromARGB(255, 214, 130, 3),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 110),
                child: Text(
                  'What you are looking for ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Container(
                height: 600,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1 / 1),
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: clothes(
                            image:
                                'assets/98c798d1959e6aff3c3e4cdd638f1343.jpg',
                            data: 'Ladies')),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: clothes(
                          image: 'assets/download (3).jfif',
                          data: 'Gents',
                        )),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: clothes(
                          image: 'assets/download (2).jfif',
                          data: 'Kids',
                        )),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: clothes(
                            image: 'assets/images.jfif',
                            data: 'Home Appliances')),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: clothes(
                          image: 'assets/images (1).jfif',
                          data: 'Electronic Appliances',
                        )),
                  ],
                ),
              ),
              const Divider(
                thickness: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Daily Deals',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    child: buildTime1(),
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 141, 36),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey)),
                  ),
                  const Text(
                    'VIEW ALL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 207, 65, 155),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                child: ListView.builder(
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
                    }),
              ),
              const Divider(
                thickness: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 230,
                ),
                child: Text(
                  'Low Price Store',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
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
                ),
              ),
              const Divider(
                thickness: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 230,
                ),
                child: Text(
                  'Trend of the Week',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
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
                  )),
              const Divider(
                thickness: 3,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 220),
                child: Text(
                  ' Products For You',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.sort_rounded),
                    const Text(
                      'Sort',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 35,
                      child: const VerticalDivider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Category',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const Icon(Icons.arrow_drop_down),
                    Container(
                      height: 35,
                      child: const VerticalDivider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Age',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const Icon(Icons.arrow_drop_down),
                    Container(
                      height: 35,
                      child: const VerticalDivider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    const Icon(Icons.filter_tilt_shift_sharp),
                    const Text(
                      'Filter',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1500,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      childAspectRatio: 1 / 1.5),
                  children: [
                    clothessoffer(
                      clothes: 'assets/images (2).jfif',
                      details: 'Most Graceful Suits',
                      offerless: '976',
                      underlinedprice: '679',
                      specialpriceoffer: '610 with 2 Special Offers',
                      rating: '4.2',
                    ),
                    clothessoffer(
                      clothes: 'assets/images (3).jfif',
                      details: 'Matchive Gean clothes',
                      offerless: '639',
                      underlinedprice: '499',
                      specialpriceoffer: '410 with 2 Special Offers',
                      rating: '4.9',
                    ),
                    clothessoffer(
                      clothes: 'assets/images (4).jfif',
                      details: 'New Fashion Clothes',
                      offerless: '410',
                      underlinedprice: '389',
                      specialpriceoffer: '349 with 2 Special Offers',
                      rating: '4.7',
                    ),
                    clothessoffer(
                      clothes: 'assets/images (5).jfif',
                      details: 'Steveless Tops ',
                      offerless: '449',
                      underlinedprice: '399',
                      specialpriceoffer: '339 with 2 Special Offers',
                      rating: '4.9',
                    ),
                    clothessoffer(
                      clothes: 'assets/images (6).jfif',
                      details: 'Boys Fits',
                      offerless: '339',
                      underlinedprice: '309',
                      specialpriceoffer: '269 with 2 Special Offers',
                      rating: '3.9',
                    ),
                    clothessoffer(
                      clothes: 'assets/downloaddd.jfif',
                      details: 'Men Shoes',
                      offerless: '559',
                      underlinedprice: '519',
                      specialpriceoffer: '489 with 2 Special Offers',
                      rating: '4.5',
                    ),
                    clothessoffer(
                      clothes: 'assets/downlooad.jfif',
                      details: 'Women Shoes',
                      offerless: '449',
                      underlinedprice: '409',
                      specialpriceoffer: '389 with 2 Special Offers',
                      rating: '3.8',
                    ),
                    clothessoffer(
                      clothes: 'assets/downloadt.jfif',
                      details: 'Ladies Trendy Graceful Sarees',
                      offerless: '499',
                      underlinedprice: '449',
                      specialpriceoffer: '409 with 1 Special Offer',
                      rating: '4.3',
                    ),
                    clothessoffer(
                      clothes: 'assets/images (7).jfif',
                      details: 'Sathhmi Fashionable Kurthis',
                      offerless: '999',
                      underlinedprice: '899',
                      specialpriceoffer: '859 with 2 Special Offers',
                      rating: '4.2',
                    ),
                    clothessoffer(
                      clothes: 'assets/images (8).jfif',
                      details: 'Abhosa Pretty Kurtis',
                      offerless: '899',
                      underlinedprice: '819',
                      specialpriceoffer: '749 with 2 Special Offers',
                      rating: '4.5',
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    final isRunning = timer == null ? false : timer!.isActive;
    if (isRunning) {
      timer!.cancel();
    }
    Navigator.of(context, rootNavigator: true).pop(context);
    return true;
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = const Duration());
    }
  }

  void reset1() {
    if (countDown) {
      setState(() => duration1 = countdownDuration1);
    } else {
      setState(() => duration1 = const Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void startTimer1() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime1());
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void addTime1() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration1.inSeconds - addSeconds;
      if (seconds < 0) {
        timer1?.cancel();
      } else {
        duration1 = Duration(seconds: seconds);
      }
    });
  }

  Widget buildTime1() {
    String twoDigits(int n) => n.toString().padLeft(1, '0');
    final hours = twoDigits(duration1.inHours);
    final minutes = twoDigits(duration1.inMinutes.remainder(60));
    final seconds = twoDigits(duration1.inSeconds.remainder(60));
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(
        width: 5,
      ),
      buildTimeCard(time: hours, header: 'HH'),
      const SizedBox(
        width: 12,
      ),
      buildTimeCard(time: minutes, header: 'MM'),
      const SizedBox(
        width: 12,
      ),
      buildTimeCard(time: seconds, header: 'SS'),
    ]);
  }

  Widget buildTimeCard({required String time, required String header}) =>
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 210, 141, 36),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              time,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 13),
            ),
          ),
          Text(header, style: const TextStyle(color: Colors.black45)),
        ],
      );
}

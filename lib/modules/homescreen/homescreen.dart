// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_const_declarations

import 'dart:async';

import 'package:bucket/Api/API/Model/model.dart';
import 'package:bucket/Api/API/Model/trending.dart';
import 'package:bucket/Api/API/Service/service.dart';
import 'package:bucket/Api/API/Service/trending.dart';
import 'package:bucket/modules/homescreen/widgets/carouselslider/banner_view.dart';
import 'package:bucket/modules/homescreen/widgets/categories.dart';
import 'package:bucket/modules/homescreen/widgets/category/lowprice_list.dart';
import 'package:bucket/modules/homescreen/widgets/category/offercloth.dart';
import 'package:bucket/modules/homescreen/widgets/category/trend.dart';
import 'package:bucket/modules/homescreen/widgets/daily_deals.dart';
import 'package:bucket/modules/homescreen/widgets/low_price.dart';
import 'package:bucket/modules/homescreen/widgets/trend.dart';
import 'package:bucket/modules/homescreen/widgets/searchbar/searchbar.dart';
import 'package:bucket/modules/homescreen/widgets/voice_recognition/voicerecorderscreen.dart';
import 'package:flutter/material.dart';

import 'widgets/category/lowprice.dart';
import 'widgets/clothes.dart';
import 'widgets/clotheswithoffer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isLoading = false;
  TrendingModel? trendingmodel;

  Model? model;
  void getData() async {
    setState(() {
      isLoading = true;
    });
    model = await ServiceHead().service();
    trendingmodel = await TrendingService().trendingservice();

    setState(() {
      isLoading = false;
    });
  }

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
    getData();
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
        body: isLoading == true
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 0),
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  showSearch(
                                      context: context, delegate: Searchbar());
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
                                        context: context,
                                        delegate: Searchbar());
                                  },
                                  decoration: const InputDecoration(
                                      border: InputBorder.none),
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 110),
                      child: Text(
                        model?.titl.toString() ?? "",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      height: 600,
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 5,
                                childAspectRatio: 1 / 1),
                        children: [
                          Clothes(
                            image: model?.imges[0] ?? "",
                            subtitle: 'Ladies',
                          ),
                          Clothes(
                              image:
                                  "https://images.meesho.com/images/products/61831214/nbgl5_400.jpg",
                              subtitle: "Gents"),
                          Clothes(
                              image:
                                  "https://images.meesho.com/images/products/195913781/jeph8_400.jpg",
                              subtitle: "Kids"),
                          Clothes(
                              image:
                                  "https://images.meesho.com/images/products/163050109/y8db9_400.jpg",
                              subtitle: "Home Appliances"),
                          Clothes(
                              image:
                                  "https://images.meesho.com/images/products/149556581/mhkmh_400.jpg",
                              subtitle: "Electronic Appliances")
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
                      child: const LowpriceList(),
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
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: LowPriceCategory(),
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
                    const TrendingCategory(),
                    const Divider(
                      thickness: 3,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1600,
                      width: 330,
                      child: GridView(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 7,
                                  crossAxisSpacing: 3,
                                  childAspectRatio: 2.1 / 4),
                          children: [
                            OfferClothes(
                              img: trendingmodel?.imgees[0] ?? "",
                              detail: 'Most Graceful Suits',
                              offer: '976',
                              crossPriceOffer: '679',
                              specialOffer: '610 with 2 Special Offers',
                              rating: '4.2',
                            ),
                            OfferClothes(
                              img: trendingmodel?.imgees[1] ?? "",
                              detail: 'Matchive Gean clothes',
                              offer: '639',
                              crossPriceOffer: '499',
                              specialOffer: '410 with 2 Special Offers',
                              rating: '4.9',
                            ),
                            OfferClothes(
                              img: trendingmodel?.imgees[2] ?? "",
                              detail: 'New Fashion Clothes',
                              offer: '410',
                              crossPriceOffer: '389',
                              specialOffer: '349 with 2 Special Offers',
                              rating: '4.7',
                            ),
                            OfferClothes(
                                img: trendingmodel?.imgees[3] ?? "",
                                crossPriceOffer: '449',
                                detail: 'Sleveless',
                                offer: '399',
                                rating: '4.9',
                                specialOffer:
                                    "339 with 2 Special Offers"), // clothessoffer(
                            OfferClothes(
                                img: trendingmodel?.imgees[4] ?? "",
                                crossPriceOffer: '309',
                                detail: 'Boys Fits',
                                offer: '339',
                                rating: '3.9',
                                specialOffer: '269 with 2 Special Offers'),
                            OfferClothes(
                                img: trendingmodel?.imgees[5] ?? "",
                                crossPriceOffer: '519',
                                detail: 'Men Shoes',
                                offer: '559',
                                rating: '4.5',
                                specialOffer: '489 with 2 Special Offers'),
                            OfferClothes(
                                img: trendingmodel?.imgees[6] ?? "",
                                crossPriceOffer: '409',
                                detail: 'Women Shoes',
                                offer: '449',
                                rating: '3.8',
                                specialOffer: '389 with 2 Special Offers'),
                            OfferClothes(
                                img: trendingmodel?.imgees[7] ?? "",
                                crossPriceOffer: "449",
                                detail: "Ladies Trendy Graceful Sarees",
                                offer: "499",
                                rating: "4.3",
                                specialOffer: "409 with 1 Special Offer"),
                            OfferClothes(
                              img: trendingmodel?.imgees[8] ?? "",
                              detail: 'Sathhmi Fashionable Kurthis',
                              offer: '999',
                              crossPriceOffer: '899',
                              specialOffer: '859 with 2 Special Offers',
                              rating: '4.2',
                            ),
                            OfferClothes(
                              img: trendingmodel?.imgees[9] ?? "",
                              detail: 'Designer Kurtis',
                              offer: '899',
                              crossPriceOffer: '819',
                              specialOffer: '749 with 2 Special Offers',
                              rating: '4.5',
                            ),
                          ]),
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

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Model? model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(model?.imges?[0] ?? ""))),
    );
  }
}

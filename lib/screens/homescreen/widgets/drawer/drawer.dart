// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../homescreen.dart';

class Drawerpage extends StatelessWidget {
  const Drawerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                '+91 9614558568',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.home,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'HOME',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.book_online,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'BOOK A CONSULTATION',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.video_file,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'VIDEO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shop,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'SHOP ONLINE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.call,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'CALL US',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.whatsapp,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'WHATSAPP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.share,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'SHARE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.rate_review,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'RATE US',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 38,
                width: 211,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) {
                        return const Homescreen();
                      }));
                    },
                    child: const Text(
                      'SIGN OUT',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )))
          ],
        ),
      ),
    );
  }
}

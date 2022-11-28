// ignore_for_file: use_build_context_synchronously

import 'package:bucket/screens/bottomnavigation/bottomnavigation.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/51gWctT0yRS._AC._SR360,460.jpg'),
                        fit: BoxFit.fill)),
              ),
              const Text(
                'bucket',
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 238, 22, 6),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }

  void splash() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return BottomnavigationBar();
    }));
  }
}

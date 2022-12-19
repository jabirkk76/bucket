import 'package:bucket/modules/splashscreen/splash.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class Language {
  final String name;
  final String code;

  const Language(this.name, this.code);
}

const languages = [
  Language('English', 'en_US'),
  Language('Hindi', 'hi'),
  Language('Francais', 'fr_FR'),
  Language('Pусский', 'ru_RU'),
  Language('Italiano', 'it_IT'),
  Language('Español', 'es_ES'),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splashscreen());
  }
}

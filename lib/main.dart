import 'package:bilgilen/carbonfootprint.dart';
import 'package:bilgilen/enerji.dart';
import 'package:bilgilen/gidaipucu.dart';
import 'package:bilgilen/homepage.dart';
import 'package:bilgilen/su.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'calibri',
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 18.0),
          )),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/su': (context) => const SuInfoPage(),
        '/carbonfootprint': (context) => const CarbonInfoPage(),
        '/gidaipucu': (context) => const FoodInfoPage(),
        '/enerji': (context) => const EnergyInfoPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

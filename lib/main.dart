import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/cartPage.dart';
import 'package:flutter_task/presentation/homePage.dart';
import 'package:flutter_task/presentation/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
    "home": (context) => HomePage(),
    "cart": (context) => CartPage(),
    },
    );
  }
}

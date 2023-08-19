import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/gridTile.dart';
import '../widgets/searchBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          centerTitle: true,
          title: Text(
            "E-Commerce",
            style: TextStyle(
                color: Colors.white38,
                fontFamily: 'poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF375DC0),
          elevation: 0,
        ),
        drawer: AppDrawer(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Search_Box(),
            ),
            Expanded(child: ProductTile())
          ],
        ),
    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Color(0xFF3B5794),
      items: [
      Icon(Icons.home,
      size: 30,),
      Icon(Icons.favorite,
        size: 30,),
      Icon(Icons.shopping_cart,
        size: 30,),
      Icon(Icons.person,
        size: 30,)
    ],),);
  }
}

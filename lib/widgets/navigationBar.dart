import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvednavigationBar extends StatefulWidget {
  const CurvednavigationBar({super.key});

  @override
  State<CurvednavigationBar> createState() => _CurvednavigationBarState();
}

class _CurvednavigationBarState extends State<CurvednavigationBar> {
  int index = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      onTap:(index) {
        setState(() {
          index = index;
        });
      },
      key: _bottomNavigationKey,
      height: 65,
      backgroundColor: Colors.transparent,
      animationDuration: Duration(milliseconds: 400),
      color: Color(0xFF3B5794),
      items: [
        Icon(
          Icons.home,
          size: 30,
        ),
        Icon(
          Icons.favorite,
          size: 30,
        ),
        Icon(
          Icons.shopping_cart,
          size: 30,
        ),
        Icon(
          Icons.person,
          size: 30,
        )
      ],
    );
  }
}

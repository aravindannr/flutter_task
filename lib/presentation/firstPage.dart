import 'package:flutter/material.dart';
import '../widgets/gridTile.dart';
import '../widgets/searchBox.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> items = [
    "iPhone 14 Plus",
    "Redmi 8",
    "Realme 11 Pro 5G",
    "Vivo Y100",
    "Oppo A55",
    "Samsung Galaxy M14",
    "iPhone 14 Plus",
    "Redmi 8",
    "Realme 11 Pro 5G",
    "Vivo Y100",
    "Oppo A55",
    "Samsung Galaxy M14",
  ];
  TextEditingController searchController = TextEditingController();
  List<String> filteredItems = [];
  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }


  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredItems = items;
      } else {
        filteredItems = items
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();

      }
      print(filteredItems);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Search_Box(
            onTap: () {
              setState(() {
                searchController.clear();
              });
            },
            controller: searchController,
            onChanged: _filterItems,
          ),
        ),
        Expanded(child: ProductTile(filteredItems: filteredItems,))
      ],
    );
  }
}

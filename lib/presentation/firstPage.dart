import 'package:flutter/material.dart';

import '../widgets/searchBox.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<Map<String, dynamic>> Products = [
    {
      "id": 1,
      "image": "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
      "price": 38000,
      "offers": "-12%",
      "name": "Realme 11 pro 5G"
    },
    {
      "id": 2,
      "image": "assets/images/vivo y100.jpeg",
      "price": 10000,
      "offers": "-10%",
      "name": "Redmi 8"
    },
    {
      "id": 3,
      "image": "assets/images/vivo y100.jpeg",
      "price": 19000,
      "offers": "-12%",
      "name": "Vivo Y100"
    },
    {
      "id": 4,
      "image": "assets/images/71Y9xMZTBDL.jpg",
      "price": 25000,
      "offers": "-5%",
      "name": "Samsung A51"
    },
    {
      "id": 5,
      "image": "assets/images/1138293-xiaomi-redmi-note-8.jpg",
      "price": 30000,
      "offers": "-3%",
      "name": "Redmi note 8"
    },
    {
      "id": 6,
      "image": "assets/images/realmeNarzo30.jpg",
      "price": 14000,
      "offers": "-8%",
      "name": "Realme narzo"
    },
    {
      "id": 7,
      "image": "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
      "price": 38000,
      "offers": "-12%",
      "name": "Realme 11 pro 5G"
    },
    {
      "id": 8,
      "image": "assets/images/vivo y100.jpeg",
      "price": 10000,
      "offers": "-10%",
      "name": "Redmi 8"
    },
    {
      "id": 9,
      "image": "assets/images/vivo y100.jpeg",
      "price": 19000,
      "offers": "-12%",
      "name": "Vivo Y100"
    },
    {
      "id": 10,
      "image": "assets/images/71Y9xMZTBDL.jpg",
      "price": 25000,
      "offers": "-5%",
      "name": "Samsung A51"
    },
    {
      "id": 11,
      "image": "assets/images/1138293-xiaomi-redmi-note-8.jpg",
      "price": 30000,
      "offers": "-3%",
      "name": "Redmi note 8"
    },
    {
      "id": 12,
      "image": "assets/images/realmeNarzo30.jpg",
      "price": 14000,
      "offers": "-8%",
      "name": "Realme narzo"
    },
  ];
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = Products;
  }

  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredItems = Products;
      } else {
        filteredItems = Products.where((item) =>
            item["name"].toLowerCase().contains(query.toLowerCase())).toList();
      }
      print(filteredItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
            child: GridView.builder(
          itemCount: filteredItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.75),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              key: ValueKey(filteredItems[index]["id"]),
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          filteredItems[index]["offers"],
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        filteredItems[index]["image"],
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      filteredItems[index]["name"],
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\u20B9' + filteredItems[index]["price"].toString(),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.lightBlue,
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ))
      ],
    );
  }
}

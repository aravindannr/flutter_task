import 'package:flutter/material.dart';

class ProductTile extends StatefulWidget {
  const ProductTile({super.key});

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  List<String> imagePath = [
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
    "assets/images/81eoabezOsL._AC_UF894,1000_QL80_.jpg",
  ];

  List<String> price = [
    "82,778",
    "10000",
    "20000",
    "23000",
    "14499",
    "13,830",
    "82,778",
    "10000",
    "20000",
    "23000",
    "14499",
    "13,830",
  ];
  List<String> Offers = [
    '5%',
    '8%',
    '3%',
    '5%',
    '5%',
    '8%',
    '3%',
    '5%',
    '5%',
    '8%',
    '3%',
    '5%',
  ];
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

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imagePath.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.75),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(20)),
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
                      Offers[index],
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
                    imagePath[index],
                    height: 110,
                    width: 110,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  items[index],
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\u20B9' + price[index]),
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
    );
  }
}

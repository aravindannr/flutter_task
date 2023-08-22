import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final List<String> favoriteItems = [
    'Product A',
    'Product B',
    'Product C',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemCount: favoriteItems.length,
          itemBuilder: (context, index) {
            final item = favoriteItems[index];
            return ListTile(
              title: Text(item),
              trailing: Icon(Icons.favorite, color: Colors.red),
            );
          },

      ),
    );
  }
}

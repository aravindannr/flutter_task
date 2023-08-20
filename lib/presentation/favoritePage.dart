import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final List<String> favoriteItems = [
    'Product A',
    'Product B',
    'Product C',
    // Add more favorite items...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
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
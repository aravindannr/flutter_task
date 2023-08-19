import 'package:flutter/material.dart';

class Search_Box extends StatelessWidget {
  final controller;


  const Search_Box({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.black12,
        ),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black38,
              ),
              contentPadding: EdgeInsets.all(8.0)),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Search_Box extends StatefulWidget {
  final onChanged;
  final controller;
  final onTap;

  const Search_Box({super.key, this.onChanged, this.controller, this.onTap});

  @override
  State<Search_Box> createState() => _Search_BoxState();
}

class _Search_BoxState extends State<Search_Box> {


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
          onChanged:widget.onChanged,
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.redAccent,),
              suffixIcon: GestureDetector(
                onTap: widget.onTap,
                child: const Icon(
                  Icons.clear,
                  color: Colors.black54,
                ),
              ),
              contentPadding: EdgeInsets.all(8.0)),
        ),
      ),
    );
  }
}
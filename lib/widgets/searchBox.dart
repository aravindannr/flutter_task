import 'package:flutter/material.dart';

class Search_Box extends StatefulWidget {

  const Search_Box({super.key});

  @override
  State<Search_Box> createState() => _Search_BoxState();
}

class _Search_BoxState extends State<Search_Box> {
  late  TextEditingController searchTextController;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }
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
          controller: searchTextController,
          decoration:  InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search,color: Colors.redAccent,),
              suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    searchTextController.clear();
                  });
                },
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
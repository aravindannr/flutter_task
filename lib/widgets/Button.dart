import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? Ontap;

  const MyButton({super.key, required this.Ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

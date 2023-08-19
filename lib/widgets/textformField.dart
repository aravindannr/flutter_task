import 'package:flutter/material.dart';

class CustromTextformField extends StatefulWidget {
  final hintText;
  final textInputAction;
  final validator;
  final obscureText;
  final obscuringCharacter;
  final suffixIcon;

  const CustromTextformField(
      {super.key,
      required this.hintText,
      required this.textInputAction,
      required this.validator,
      this.obscureText,
      this.obscuringCharacter,
      this.suffixIcon});

  @override
  State<CustromTextformField> createState() => _CustromTextformFieldState();
}

class _CustromTextformFieldState extends State<CustromTextformField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}

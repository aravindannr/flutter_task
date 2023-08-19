import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final hintText;
  final textInputAction;
  final validator;
  final obscureText;
  final obscuringCharacter;
  final suffixIcon;
  final controller;

  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputAction,
      required this.validator,
      this.obscureText,
      this.obscuringCharacter,
      this.suffixIcon, this.controller});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller:  widget.controller,
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

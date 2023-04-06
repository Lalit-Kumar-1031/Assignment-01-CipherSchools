import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  const CustomFormField(
      {Key? key, required this.hint, required this.controller})
      : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 13),
          hintText: widget.hint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: -4, left: 10, bottom: 5),
        ),
      ),
    );
  }
}

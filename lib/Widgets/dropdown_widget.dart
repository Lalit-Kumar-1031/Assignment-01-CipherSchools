import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  final List<String> listname;
  final double height;
  final double width;

  DropDownWidget(
      {Key? key,
      required this.listname,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      width: widget.width,
      child: DropdownButtonFormField<String>(
          value: selected,
          hint: const Text("Papular"),
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          items: widget.listname.map((e) {
            return DropdownMenuItem<String>(
              child: Text(e),
              value: e,
            );
          }).toList(),
          onChanged: (val) {
            setState(() {
              selected = val;
            });
          }),
    );
  }
}

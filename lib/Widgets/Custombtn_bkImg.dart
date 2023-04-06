import 'package:flutter/material.dart';

class CustomButtonbkImg extends StatefulWidget {
  final String text;
  final Icon icon;
  final VoidCallback callback;
  const CustomButtonbkImg({Key? key, required this.text, required this.icon,required this.callback})
      : super(key: key);

  @override
  State<CustomButtonbkImg> createState() => _CustomButtonbkImgState();
}

class _CustomButtonbkImgState extends State<CustomButtonbkImg> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: TextButton(
        onPressed:widget.callback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              width: 3,
            ),
            widget.icon,
          ],
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 1.5),
                borderRadius: BorderRadius.circular(9)))
      ),
    );
  }
}

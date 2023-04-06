import 'package:flutter/material.dart';

class FooterInfo extends StatefulWidget {
  final String popular_course;
  final String company_info;
  const FooterInfo(
      {Key? key, required this.popular_course, required this.company_info})
      : super(key: key);

  @override
  State<FooterInfo> createState() => _FooterInfoState();
}

class _FooterInfoState extends State<FooterInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.46,
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_right_alt_sharp,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.popular_course,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.43,
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_right_alt,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.company_info,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

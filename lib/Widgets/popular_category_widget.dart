import 'package:flutter/material.dart';

class PopularCategoryWidget extends StatefulWidget {

  const PopularCategoryWidget({Key? key}) : super(key: key);

  @override
  State<PopularCategoryWidget> createState() => _PopularCategoryWidgetState();
}

class _PopularCategoryWidgetState extends State<PopularCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    Size screen=MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height:screen.height*0.3,
            width: screen.width*0.98,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Images/category1.png"),
                fit: BoxFit.fill,
              )
            ),
          ),
          Container(
            height:screen.height*0.3,
            width: screen.width*0.98,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/category2.png"),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Container(
            height:screen.height*0.3,
            width: screen.width*0.98,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/category3.png"),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Container(
            height:screen.height*0.3,
            width: screen.width*0.98,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/category3.png"),
                  fit: BoxFit.fill,
                )
            ),
          ),
        ],
      ),
    );
  }
}

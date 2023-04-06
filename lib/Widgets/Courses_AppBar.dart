import 'package:flutter/material.dart';

class CoursesAppBar extends StatefulWidget {
  const CoursesAppBar({Key? key}) : super(key: key);

  @override
  State<CoursesAppBar> createState() => _CoursesAppBarState();
}

class _CoursesAppBarState extends State<CoursesAppBar> {
  @override
  Widget build(BuildContext context) {
    Size screensize=MediaQuery.of(context).size;
    return Container(
      height: screensize.height*0.15,
      width: screensize.width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius:5,spreadRadius:0.2,
            )
          ]
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 9,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/Images/cipher_icon.jpg',),
            radius: 17,
          ),
          Text(" CipherSchools",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

        ],
      ),
    );
  }
}

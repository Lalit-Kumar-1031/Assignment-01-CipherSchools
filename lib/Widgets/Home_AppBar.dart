import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget with PreferredSizeWidget {

  const HomeAppBar({Key? key}) :preferredSize=const Size.fromHeight(60), super(key: key);
  @override
  final Size preferredSize;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  bool tapped=true;
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
          Row(
            children: [
              SizedBox(width: 9,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/Images/cipher_icon.jpg',),
                radius: 17,
              ),
              Text(" CipherSchools",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ],
          ),
          IconButton(onPressed: (){
            if(tapped==true)
            {
              tapped=false;
            }
            else{
              tapped=true;
            }
            setState(() {

            });
          }, icon:tapped?Icon(Icons.format_align_right):Icon(Icons.cut)),
        ],
      ),
    );
  }
}

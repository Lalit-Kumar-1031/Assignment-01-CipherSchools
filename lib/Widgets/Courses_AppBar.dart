import 'package:cipher_schools/Utils/Constants.dart';
import 'package:cipher_schools/Widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';

class CoursesAppBar extends StatefulWidget with PreferredSizeWidget {
  const CoursesAppBar({Key? key}) :preferredSize=const Size.fromHeight(60), super(key: key);

  @override
  final Size preferredSize;
  @override
  State<CoursesAppBar> createState() => _CoursesAppBarState();
}

class _CoursesAppBarState extends State<CoursesAppBar> {
  bool tapped=true;
  bool _switch=false;
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
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 9,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/Images/cipher_icon.jpg',),
            radius: 17,
          ),
          Text(" CipherSchools",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          SizedBox(width: 6,),
         InkWell(
           onTap: (){
             if(tapped==true)
             {
               tapped=false;
             }
             else{
               tapped=true;
             }
             setState(() {

             });
           },
           child: Container(
             height: 60,width: 90,
             decoration: BoxDecoration(
               // image: DecorationImage(
               //   image: AssetImage('assets/Images/popup.png'),
               //   fit: BoxFit.fill
               // )
             ),
             child: PopupMenuButton(
               icon:tapped?Image.asset('assets/Images/popup.png'):Icon(Icons.add) ,
               color: Colors.white,
               itemBuilder: (context) => [
                 PopupMenuItem(child: Text(features[0]),onTap: (){},),
                 PopupMenuItem(child: Text(features[1]),onTap: (){},),
                 PopupMenuItem(child: Text(features[2]),onTap: (){},),
                 PopupMenuItem(child: Text(features[3]),onTap: (){},),
                 PopupMenuItem(child: Text(features[4]),onTap: (){},),
                 PopupMenuItem(child: Text(features[5]),onTap: (){},),
                 PopupMenuItem(child: Text(features[6]),onTap: (){},),


               ],
             ),
           ),
         ),
          SizedBox(width: 3,),
          Switch(value:_switch, onChanged:(value) {
           setState(() {
             _switch=value;
           });
          },),
          SizedBox(width: 3,),

          Icon(Icons.notifications_outlined),
          SizedBox(width: 5,),
          Icon(Icons.search),

        ],
      ),
    );
  }

}

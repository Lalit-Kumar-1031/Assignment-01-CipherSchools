import 'package:cipher_schools/Widgets/Custombtn_bkImg.dart';
import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final String bk_Img;
  final String subtitle;
  final String title;
  final String btnText;
  final Icon icon;
  final VoidCallback callback;
  const BackgroundImageWidget(
      {Key? key,
      required this.bk_Img,
      required this.subtitle,
      required this.title,
      required this.btnText,
      required this.icon,required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.31,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: DecorationImage(
              image: AssetImage(
                bk_Img,
              ),
              fit: BoxFit.cover),
        ),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.31,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35,),
                  Text(subtitle,style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 10,),
                  Text(title,style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                  SizedBox(height: 45,),
                  CustomButtonbkImg(text: btnText, icon: icon,callback:callback),

                ],
              ),
            )),
      ),
    );
  }
}

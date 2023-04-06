import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_schools/Utils/Constants.dart';
import 'package:flutter/material.dart';

class CreatorsFromSlider extends StatefulWidget {
  List <String> imglist;
  final double height;
   CreatorsFromSlider({Key? key,required this.imglist,required this.height}) : super(key: key);

  @override
  State<CreatorsFromSlider> createState() => _CreatorsFromSliderState();
}

class _CreatorsFromSliderState extends State<CreatorsFromSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: widget.imglist.length,
        itemBuilder: (context, index, realIndex) {
          final c_img = widget.imglist[index];
          return setCImage(c_img, index);
        },
        options: CarouselOptions(
          height: widget.height,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(seconds: 5),
          //viewportFraction: 1,
          //enlargeCenterPage: true,
          // enlargeStrategy: CenterPageEnlargeStrategy.height,
        ));
  }
}
Widget setCImage(String c_img, int index) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(c_img),
          fit: BoxFit.fill,
        )),
    margin: EdgeInsets.symmetric(horizontal: 0),
    //child: Image.asset(img_url,fit: BoxFit.fill,),
  );
}
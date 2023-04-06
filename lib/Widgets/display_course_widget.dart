import 'package:flutter/material.dart';

class DisplayCourseWidget extends StatefulWidget {
  final String course_url;
  final String course_name;
  final String course_title;
  final String no_of_videos;
  final String course_time;
  final VoidCallback course_callback;
  final VoidCallback techaer_callback;
  final String teachers_img;
  final String teacher_name;
  final String teacher_type;

  const DisplayCourseWidget(
      {Key? key,
      required this.course_url,
      required this.course_name,
      required this.course_title,
      required this.no_of_videos,
      required this.course_time,
      required this.course_callback,
      required this.teachers_img,
      required this.teacher_name,
      required this.teacher_type,
      required this.techaer_callback})
      : super(key: key);

  @override
  State<DisplayCourseWidget> createState() => _DisplayCourseWidgetState();
}

class _DisplayCourseWidgetState extends State<DisplayCourseWidget> {
  @override
  Widget build(BuildContext context) {
    Size screensize=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 2),
      child: Container(
        height: screensize.height*0.4,
        width: screensize.width*0.476,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade200,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: widget.course_callback,
              child: Container(
                height: screensize.height*0.14,
                width: screensize.width*0.475,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(widget.course_url,),
                    fit: BoxFit.fill,
                  )
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: widget.course_callback,
                child: Container(
                  height: 35,
                  margin: EdgeInsets.only(top: 9),
                  width: screensize.width*0.35,
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    color: Colors.orange.withOpacity(0.1)
                  ),
                  child: Text(widget.course_name,style: TextStyle(color: Colors.orange,fontSize: 12),),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(widget.course_title,style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),overflow: TextOverflow.ellipsis,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0,top: 4,bottom: 1),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("No. of videos : ${widget.no_of_videos}",style: TextStyle(fontSize:12))),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 6.0,top: 6,bottom: 1),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Course Time : ${widget.course_time}",style: TextStyle(fontSize:12))),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 8,),
              horizontalTitleGap:1,
              title: Text(widget.teacher_name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),overflow: TextOverflow.ellipsis,),
              subtitle: Text(widget.teacher_type),
              leading: CircleAvatar(
                backgroundImage: AssetImage(widget.teachers_img),
                radius: 13,
              ),
              onTap:widget.techaer_callback
            ),

          ],
        ),
      ),
    );
  }
}

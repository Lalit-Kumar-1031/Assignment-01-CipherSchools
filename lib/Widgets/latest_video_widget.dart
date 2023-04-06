import 'package:cipher_schools/Widgets/display_course_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/Constants.dart';

class LatestVideoWidget extends StatefulWidget {
  const LatestVideoWidget({Key? key}) : super(key: key);

  @override
  State<LatestVideoWidget> createState() => _LatestVideoWidgetState();
}

class _LatestVideoWidgetState extends State<LatestVideoWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DisplayCourseWidget(
              course_url: courses_Img[2],
              course_name: course_list[2],
              course_title: "Cascading Style sheet",
              no_of_videos: "24",
              course_time: "3 hours",
              course_callback: () {},
              teachers_img: "assets/Images/mentor3.jpg",
              teacher_name: "Shruti Codes",
              teacher_type: "Instructors",
              techaer_callback: () {}),

          DisplayCourseWidget(
              course_url: courses_Img[3],
              course_name: course_list[2],
              course_title: "Hyper Text Markup Language",
              no_of_videos: "21",
              course_time: "2 hours",
              course_callback: () {},
              teachers_img: "assets/Images/mentor3.jpg",
              teacher_name: "Shruti codes",
              teacher_type: "Instructors",
              techaer_callback: () {}),
          Row(
            children: [
              DisplayCourseWidget(
                  course_url: courses_Img[0],
                  course_name: course_list[5],
                  course_title: "Complete Python Tutorials",
                  no_of_videos: "241",
                  course_time: "27 hours",
                  course_callback: () {},
                  teachers_img: "assets/Images/css.png",
                  teacher_name: "Harshit Vashisth",
                  teacher_type: "Instructors",
                  techaer_callback: () {}),

              DisplayCourseWidget(
                  course_url: courses_Img[1],
                  course_name: course_list[2],
                  course_title: "Java Script Tutorials",
                  no_of_videos: "36",
                  course_time: "5.2 hours",
                  course_callback: () {},
                  teachers_img: "assets/Images/mentor3.jpg",
                  teacher_name: "Shruti codes",
                  teacher_type: "Instructors",
                  techaer_callback: () {}),
            ],
          ),
        ],
      ),
    );
  }
}

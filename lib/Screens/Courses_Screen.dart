import 'package:cipher_schools/Utils/Constants.dart';
import 'package:cipher_schools/Widgets/Home_AppBar.dart';
import 'package:cipher_schools/Widgets/allcourse_widget.dart';
import 'package:cipher_schools/Widgets/course_slider.dart';
import 'package:cipher_schools/Widgets/display_course_widget.dart';
import 'package:cipher_schools/Widgets/latest_video_widget.dart';
import 'package:cipher_schools/Widgets/popular_category_widget.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  String? selected;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12,),
              CourseSlider(imglist: courses_slider, height:230),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Recommended Courses",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17),),
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    width: 100,
                    child: DropdownButtonFormField<String>(
                      value: selected,
                        hint: Text("Papular"),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        items:course_category.map((e){
                      return DropdownMenuItem<String>(child: Text(e),
                      value: e,);
                    }).toList(), onChanged:(val){
                        setState(() {
                          selected=val;
                        });
                    }),
                  )
                ],
              ),
              SizedBox(height: 20,),
              selected=="Popular"?
              Row(
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
                ],
              ):Row(
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
              SizedBox(height: 20,),
              Align(child: Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 25),
                child: Text("Latest Videos",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17),),
              ),alignment: Alignment.centerLeft,),
              SizedBox(height: 20,),

              LatestVideoWidget(),

              SizedBox(height: 20,),
              Align(child: Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 25),
                child: Text("Latest Videos",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17),),
              ),alignment: Alignment.centerLeft,),
              SizedBox(height: 20,),

              PopularCategoryWidget(),

              SizedBox(height: 20,),
              Align(child: Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 25),
                child: Text("All Courses",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17),),
              ),alignment: Alignment.centerLeft,),
              SizedBox(height: 20,),
              AllCourseWidget(),


            ],
          ),
        )
      ),
    );
  }
}

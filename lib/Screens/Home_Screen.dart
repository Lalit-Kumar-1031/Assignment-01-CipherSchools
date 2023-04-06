import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_schools/Screens/Courses_Screen.dart';
import 'package:cipher_schools/Utils/Constants.dart';
import 'package:cipher_schools/Utils/colors.dart';
import 'package:cipher_schools/Widgets/Custom_FormField.dart';
import 'package:cipher_schools/Widgets/Home_AppBar.dart';
import 'package:cipher_schools/Widgets/Info_widget.dart';
import 'package:cipher_schools/Widgets/backgroud_image_widget.dart';
import 'package:cipher_schools/Widgets/creators_from_Slider.dart';
import 'package:cipher_schools/Widgets/display_course_widget.dart';
import 'package:cipher_schools/Widgets/feedback_widget.dart';
import 'package:cipher_schools/Widgets/footer_info.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobController = TextEditingController();
  final subController = TextEditingController();
  final channelController = TextEditingController();
  final timeController = TextEditingController();
  int select_course = 0;
  Color btncolor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    Size screen=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: HomeAppBar(),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.black,
                            fontSize: 36),
                      ),
                      Text("the ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              color: Colors.orange,
                              fontSize: 36)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Future ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.orange,
                            fontSize: 36),
                      ),
                      Text("of Learning ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              color: Colors.black,
                              fontSize: 36)),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Start Learning by best creators for",
                    style: TextStyle(color: Colors.black87, fontSize: 19),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 22, color: Colors.orange),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration(milliseconds: 700),
                          animatedTexts: [
                            TyperAnimatedText("absolutely Free",
                                speed: Duration(milliseconds: 200)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Positioned(
                              left: 40,
                              child: CircleAvatar(
                                backgroundColor: Colors.black26,
                                radius: 17,
                                child: CircleAvatar(
                                  foregroundImage:
                                      AssetImage('assets/Images/mentor3.jpg'),
                                  radius: 15,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              child: CircleAvatar(
                                backgroundColor: Colors.black26,
                                radius: 17,
                                child: CircleAvatar(
                                  foregroundImage:
                                      AssetImage('assets/Images/mentor2.jpg'),
                                  radius: 15,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black26,
                              radius: 17,
                              child: CircleAvatar(
                                foregroundImage:
                                    AssetImage('assets/Images/mentor1.jpg'),
                                radius: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "50+",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Mentors",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        color: Colors.grey.withOpacity(0.5),
                        width: 0.35,
                      ),
                      Column(
                        children: [
                          Text(
                            "4.8/5",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Image.asset(
                            'assets/Images/rating.png',
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.54,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Start Learning Now",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  //This Section for Implement Slider
                  CarouselSlider.builder(
                      itemCount: sliderImg.length,
                      itemBuilder: (context, index, realIndex) {
                        final Img_url = sliderImg[index];
                        return setImage(Img_url, index);
                      },
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 4),
                        autoPlayAnimationDuration: Duration(milliseconds: 1300),
                        //viewportFraction: 1,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      )),

                  SizedBox(
                    height: 60,
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          InfoWidget(title: "15K+", subtitle: "Students"),
                          InfoWidget(
                              title: "10K+",
                              subtitle: "Certificates delivered"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InfoWidget(
                              title: "450K+", subtitle: "Streamed minutes"),
                          InfoWidget(
                              title: "12TB+",
                              subtitle: "Content streamed in last 60 days"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InfoWidget(title: "50+", subtitle: "Creators"),
                          InfoWidget(
                              title: "110+", subtitle: "Program available"),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      BackgroundImageWidget(
                        bk_Img: 'assets/Images/bk2.png',
                        subtitle:
                            "Unlock Your learning potential with CipherSchools",
                        title: "Best Platform for the Students ",
                        btnText: "For Students",
                        icon: Icon(
                          Icons.school_outlined,
                          color: Colors.white,
                        ),
                        callback: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BackgroundImageWidget(
                        bk_Img: 'assets/Images/bk1.png',
                        subtitle:
                            "Empowering students to open their minds to atmost knowledge",
                        title: "Be the mentor you never had ",
                        btnText: "For Creators",
                        icon: Icon(
                          Icons.perm_contact_calendar_outlined,
                          color: Colors.white,
                        ),
                        callback: () {
                          print("Hello");

                          //show dialog code start here
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Container(
                                  height: 60,
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Creators Access",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                                height: 32,
                                                width: 70,
                                                child: TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                  style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.black),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 1,
                                        width: 240,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ],
                                  ),
                                ),
                                content: SingleChildScrollView(
                                  child: Container(
                                    height: 470,
                                    child: Column(
                                      children: [
                                        CustomFormField(
                                          hint: "Enter Your Name",
                                          controller: nameController,
                                        ),
                                        CustomFormField(
                                          hint: "Your Email",
                                          controller: emailController,
                                        ),
                                        CustomFormField(
                                          hint: "Mobile No",
                                          controller: mobController,
                                        ),
                                        CustomFormField(
                                          hint: "Subject You want tech",
                                          controller: subController,
                                        ),
                                        CustomFormField(
                                          hint: "Youtube Channel Link",
                                          controller: channelController,
                                        ),
                                        Container(
                                          height: 100,
                                          margin: EdgeInsets.all(9),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              maxLines: 5,
                                              controller: timeController,
                                              cursorColor: Colors.black54,
                                              decoration: InputDecoration(
                                                hintStyle:
                                                    TextStyle(fontSize: 13),
                                                hintText:
                                                    "Would you be needing any assistance in channel creation on CipherSchools? If yes ,Please share your contact number and a good time to call ",
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.only(
                                                    top: -4,
                                                    left: 10,
                                                    bottom: 5),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                  height: 38,
                                                  width: 120,
                                                  child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      "Submit",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white),
                                                    ),
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.orange),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                titlePadding: EdgeInsets.zero,
                                contentPadding: EdgeInsets.zero,
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),

//-------------------------------------- Students Live Feedback Section Code with Slider----------------------------------------

                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        color: livefeedbackcolor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.26,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Students LIVE Feedback",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "We love to read them",
                                        style: TextStyle(
                                            fontSize: 27,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "feedback is a significant component of our success because it inspires us to get better and meet the expectations of our students.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          letterSpacing: 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.44,
                              padding: EdgeInsets.all(8),
                              child: FeedbackWidget(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
 //--------------------------------------Creators From Section Code with Slider----------------------------------------

                      Container(
                        margin: EdgeInsets.only(bottom: 12, left: 7),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Creators from',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            )),
                      ),

                      CourseSlider(imglist:cslider_Img,height: 90,),

                      SizedBox(
                        height: 30,
                      ),

//--------------------------------------Bests are here Section Code r----------------------------------------

                      Container(
                        margin: EdgeInsets.only(bottom: 12, left: 7),
                        child: Text(
                          'Bests are here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      CarouselSlider.builder(
                          itemCount: course_list.length,
                          itemBuilder: (context, index, realIndex) {
                            final text = course_list[index];
                            return setTextImage(text, index);
                          },
                          options: CarouselOptions(
                            height: 60,
                            pageSnapping: false,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
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
                          SizedBox(height: 25,),

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
                          ),

                        ],
                      ),
                      SizedBox(height: 30,),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,bottom: 30),
                        child: Text("Our Expert Mentors",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 29),),
                      ),

                      CourseSlider(imglist: mentorslider_img, height:170),

                      SizedBox(height: 40,),

                      Container(
                        height: screen.height*0.8,
                        width: screen.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Images/community.png'),fit: BoxFit.fitWidth,
                          ),
                        ),

                      ),

                      Container(
                        height: screen.height*0.3,
                        width: screen.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Images/footer.png'),fit: BoxFit.fitWidth,
                          ),
                        ),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Text("Popular Courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width: 28,),
                          Text("Company Info",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          FooterInfo(popular_course:"Data Science", company_info:"Home"),
                          FooterInfo(popular_course:"Programming", company_info:"Blog"),
                          FooterInfo(popular_course:"Data Structure", company_info:"Why We?"),
                          FooterInfo(popular_course:"Machine Learning", company_info:"Sitemap"),
                          FooterInfo(popular_course:"Web Development", company_info:"Privacy Policy"),
                          FooterInfo(popular_course:"Game Development", company_info:"Terms & Condition"),
                        ],
                      ),
                      SizedBox(height: 30,),
                      
                      Column(
                        children: [
                          Container(
                            height: screen.height*0.06,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 245, 250,1),
                              image: DecorationImage(
                                image: AssetImage('assets/Images/social.png'),
                              ),
                            ),
                          ),
                          Container(
                            color:  Color.fromRGBO(242, 245, 250,1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(child: Image.asset('assets/Images/discord.png',height: 30,width: 40,),onTap: (){

                                },),
                                InkWell(child: Image.asset('assets/Images/instagram.png',height: 30,width: 40,),onTap: (){},),
                                InkWell(child: Image.asset('assets/Images/linkedin.png',height: 30,width: 40,),onTap: (){},),
                                InkWell(child: Image.asset('assets/Images/github.png',height: 30,width: 40,),onTap: (){},),
                                InkWell(child: Image.asset('assets/Images/facebook.png',height: 30,width: 40,),onTap: (){},),
                                InkWell(child: Image.asset('assets/Images/twitter.png',height: 30,width: 40,),onTap: (){},),
                              ],
                            ),
                          ),

                        ],
                      ),
                      Container(height: 40,color: Color.fromRGBO(242, 245, 250,1),)
                    ],
                  )
                ],
              ),
            )));
  }
}

Widget setImage(String img_url, int index) {
  return Container(
    width: 260,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(img_url),
          fit: BoxFit.fill,
        )),
    margin: EdgeInsets.symmetric(horizontal: 4),
    //child: Image.asset(img_url,fit: BoxFit.fill,),
  );
}

Widget setTextImage(String text, int index) {
  return Container(
    width: 270,
    margin: EdgeInsets.symmetric(horizontal: 0),
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: index == 0 ? Colors.orange : Colors.grey.shade200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    ),
  );
}

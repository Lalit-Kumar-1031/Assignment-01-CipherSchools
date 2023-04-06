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
    Size screen = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: const HomeAppBar(),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),

//------------------------------ Weclome to the Future of learning code Section--------------------------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
                    children: const [
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
                  const SizedBox(
                    height: 25,
                  ),

                  //------------------------------ Animated Text code Section--------------------------------

                  const Text(
                    "Start Learning by best creators for",
                    style: TextStyle(color: Colors.black87, fontSize: 19),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultTextStyle(
                        style:
                            const TextStyle(fontSize: 22, color: Colors.orange),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(milliseconds: 700),
                          animatedTexts: [
                            TyperAnimatedText("absolutely Free",
                                speed: const Duration(milliseconds: 200)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

//------------------------------ 50+ Mentor and Course Rating code Section--------------------------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        child: Stack(
                          fit: StackFit.loose,
                          children: const [
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
                        children: const [
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
                          const Text(
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
                  const SizedBox(
                    height: 40,
                  ),

//------------------------------ Start Learning Button code Section--------------------------------

                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.54,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        children: const [
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
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),

                  //------------------------------ Slider 1 code Section--------------------------------

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
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1300),
                        //viewportFraction: 1,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      )),

                  const SizedBox(
                    height: 60,
                  ),

//------------------------------ CipherSchools Record Data code Section--------------------------------

                  Column(
                    children: [
                      Row(
                        children: const [
                          InfoWidget(title: "15K+", subtitle: "Students"),
                          InfoWidget(
                              title: "10K+",
                              subtitle: "Certificates delivered"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          InfoWidget(
                              title: "450K+", subtitle: "Streamed minutes"),
                          InfoWidget(
                              title: "12TB+",
                              subtitle: "Content streamed in last 60 days"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

//------------------------------ Background Image For Students or Creators code Section--------------------------------

                      Row(
                        children: const [
                          InfoWidget(title: "50+", subtitle: "Creators"),
                          InfoWidget(
                              title: "110+", subtitle: "Program available"),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      BackgroundImageWidget(
                        bk_Img: 'assets/Images/bk2.png',
                        subtitle:
                            "Unlock Your learning potential with CipherSchools",
                        title: "Best Platform for the Students ",
                        btnText: "For Students",
                        icon: const Icon(
                          Icons.school_outlined,
                          color: Colors.white,
                        ),
                        callback: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BackgroundImageWidget(
                        bk_Img: 'assets/Images/bk1.png',
                        subtitle:
                            "Empowering students to open their minds to atmost knowledge",
                        title: "Be the mentor you never had ",
                        btnText: "For Creators",
                        icon: const Icon(
                          Icons.perm_contact_calendar_outlined,
                          color: Colors.white,
                        ),
                        callback: () {
                          print("Hello");

//------------------------------ For Creators Form code Section--------------------------------

                          //show dialog code start here
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Container(
                                  height: 60,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
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
                                                  style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.black),
                                                  child: const Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
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
                                          margin: const EdgeInsets.all(9),
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
                                              decoration: const InputDecoration(
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
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.orange),
                                                    child: const Text(
                                                      "Submit",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white),
                                                    ),
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
                      const SizedBox(
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
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
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
                                      padding: EdgeInsets.all(8.0),
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
                                    padding: EdgeInsets.all(8.0),
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
                              padding: const EdgeInsets.all(8),
                              child: const FeedbackWidget(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),

                      //--------------------------------------Creators From Section Code with Slider----------------------------------------

                      Container(
                        margin: const EdgeInsets.only(bottom: 12, left: 7),
                        child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Creators from',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            )),
                      ),

                      CourseSlider(
                        imglist: cslider_Img,
                        height: 90,
                      ),

                      const SizedBox(
                        height: 30,
                      ),

//--------------------------------------Bests are here Section Code r----------------------------------------

                      Container(
                        margin: const EdgeInsets.only(bottom: 12, left: 7),
                        child: const Text(
                          'Bests are here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
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
                      const SizedBox(
                        height: 40,
                      ),

//------------------------------ Courses Display  code Section--------------------------------

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
                          const SizedBox(
                            height: 25,
                          ),
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
                      const SizedBox(
                        height: 30,
                      ),

//------------------------------ Our Expert Mentor with Slider code Section--------------------------------

                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 30),
                        child: Text(
                          "Our Expert Mentors",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 29),
                        ),
                      ),

                      CourseSlider(imglist: mentorslider_img, height: 170),

                      const SizedBox(
                        height: 40,
                      ),

//------------------------------ Join Discord code Section--------------------------------

                      Container(
                        height: screen.height * 0.8,
                        width: screen.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Images/community.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),

//------------------------------ CipherSchools Intro code Section--------------------------------

                      Container(
                        height: screen.height * 0.3,
                        width: screen.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Images/footer.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),

                      //------------------------------ Popular Course and Company Info code Section--------------------------------

                      Row(
                        children: const [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Popular Courses",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Text(
                            "Company Info",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          FooterInfo(
                              popular_course: "Data Science",
                              company_info: "Home"),
                          FooterInfo(
                              popular_course: "Programming",
                              company_info: "Blog"),
                          FooterInfo(
                              popular_course: "Data Structure",
                              company_info: "Why We?"),
                          FooterInfo(
                              popular_course: "Machine Learning",
                              company_info: "Sitemap"),
                          FooterInfo(
                              popular_course: "Web Development",
                              company_info: "Privacy Policy"),
                          FooterInfo(
                              popular_course: "Game Development",
                              company_info: "Terms & Condition"),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),

//------------------------------ Last Social Media Button code Section--------------------------------

                      Column(
                        children: [
                          Container(
                            height: screen.height * 0.06,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 245, 250, 1),
                              image: DecorationImage(
                                image: AssetImage('assets/Images/social.png'),
                              ),
                            ),
                          ),
                          Container(
                            color: const Color.fromRGBO(242, 245, 250, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Image.asset(
                                    'assets/Images/discord.png',
                                    height: 30,
                                    width: 40,
                                  ),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Image.asset(
                                    'assets/Images/instagram.png',
                                    height: 30,
                                    width: 40,
                                  ),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Image.asset(
                                    'assets/Images/linkedin.png',
                                    height: 30,
                                    width: 40,
                                  ),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Image.asset(
                                    'assets/Images/github.png',
                                    height: 30,
                                    width: 40,
                                  ),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Image.asset(
                                    'assets/Images/facebook.png',
                                    height: 30,
                                    width: 40,
                                  ),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Image.asset(
                                    'assets/Images/twitter.png',
                                    height: 30,
                                    width: 40,
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        color: const Color.fromRGBO(242, 245, 250, 1),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}

//------------------------------  All Function related to Slider code Section--------------------------------

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
    margin: const EdgeInsets.symmetric(horizontal: 4),
    //child: Image.asset(img_url,fit: BoxFit.fill,),
  );
}

Widget setTextImage(String text, int index) {
  return Container(
    width: 270,
    margin: const EdgeInsets.symmetric(horizontal: 0),
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

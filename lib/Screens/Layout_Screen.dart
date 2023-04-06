import 'package:cipher_schools/Screens/Courses_Screen.dart';
import 'package:cipher_schools/Screens/Home_Screen.dart';
import 'package:cipher_schools/Screens/Profile_Screen.dart';
import 'package:cipher_schools/Screens/Trending_Screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  PageController pageController = PageController();

  static const List<Widget> pages = [
    HomeScreen(),
    CoursesScreen(),
    TrendingScreen(),
    ProfileScreen(),
  ];
  int selectedTab = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  changepage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      selectedTab = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              allowImplicitScrolling: false,
              controller: pageController, children: pages),
          bottomNavigationBar: Container(
            height: 55,
            margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    spreadRadius: 0.7,
                    offset: Offset.zero)
              ],
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(

              //physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 1,bottom: 2),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              onTap: changepage,
              //controller: pageController,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home_outlined,
                    color: selectedTab == 0 ? Colors.orange : Colors.black,
                  ),
                  iconMargin: EdgeInsets.only(bottom: 3),
                  child: Text("Home",style: TextStyle(color:selectedTab==0 ?Colors.orange :Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                ),
                Tab(
                  icon: Icon(
                    Icons.library_books,
                    color: selectedTab == 1 ? Colors.orange : Colors.black,
                  ),
                  iconMargin: EdgeInsets.only(bottom: 3),
                  child: Text("Courses",style: TextStyle(color: selectedTab==1?Colors.orange :Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                ),
                Tab(
                  icon: Icon(
                    Icons.trending_up,
                    color: selectedTab == 2 ? Colors.orange : Colors.black,
                  ),
                  iconMargin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Trending",
                    style: TextStyle(color:selectedTab==2?Colors.orange :Colors.black,fontSize: 10,fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: selectedTab == 3 ? Colors.orange : Colors.black,
                  ),
                  iconMargin: EdgeInsets.only(bottom: 3),
                  child: Text("My Profile",style: TextStyle(color:selectedTab==3?Colors.orange :Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 100,
          width: 200,
          child:DefaultTextStyle(
            style: TextStyle(fontSize: 20,color: Colors.orange),
            child:AnimatedTextKit(
              repeatForever: true,
              pause: Duration(milliseconds: 500),
              animatedTexts: [
                TyperAnimatedText("Absolute Free",speed: Duration(milliseconds: 200)),
              ],
            ) ,
          ),
        ),
      ),
    );
  }
}

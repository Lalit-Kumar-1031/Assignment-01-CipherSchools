import 'package:cipher_schools/Utils/Constants.dart';
import 'package:flutter/material.dart';

class FeedbackWidget extends StatefulWidget {
  const FeedbackWidget({Key? key}) : super(key: key);

  @override
  State<FeedbackWidget> createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  int currentAd = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (_) {
        if (currentAd == largeAds.length - 1) {
          currentAd = -1;
        }
        setState(() {
          currentAd++;
        });
      },
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    largeAds[currentAd],
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(15)),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentAd = 0;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentAd == 0 ? Colors.orange : Colors.black,
                    ),
                    height: 5,
                    width: 50),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentAd = 1;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentAd == 1 ? Colors.orange : Colors.black,
                    ),
                    height: 5,
                    width: 50),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentAd = 2;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentAd == 2 ? Colors.orange : Colors.black,
                    ),
                    height: 5,
                    width: 50),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentAd = 3;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentAd == 3 ? Colors.orange : Colors.black,
                    ),
                    height: 5,
                    width: 50),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentAd = 4;
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentAd == 4 ? Colors.orange : Colors.black,
                    ),
                    height: 5,
                    width: 50),
              ),
            ],
          )
        ],
      ),
    );
  }
}

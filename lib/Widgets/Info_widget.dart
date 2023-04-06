import 'package:flutter/material.dart';

class InfoWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  const InfoWidget({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width/2,
      //color: Colors.red,
      child: Column(
        children: [
          SizedBox(width:MediaQuery.of(context).size.width/2,child: Center(child: Text(widget.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orange),))),
          SizedBox(height: 1,),
          SizedBox(width:MediaQuery.of(context).size.width/2,child: Center(child: Text(widget.subtitle,style: TextStyle(fontSize: 17,color: Colors.black),))),
        ],
      ),
    );
  }
}

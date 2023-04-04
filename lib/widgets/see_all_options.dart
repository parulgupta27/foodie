import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodei/main.dart';
class SeeAllOption extends StatelessWidget {
  String h1;
  String h2;
  SeeAllOption(this.h1,this.h2);
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(h1,style: TextStyle(fontSize: height*0.025,fontWeight: FontWeight.w700),),
                      Text(h2,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: height*0.015),),
                    ],
                  ),
                  Row(children: [
                    Text("See All",style: TextStyle(color: Colors.grey,fontSize: height*0.02,fontWeight: FontWeight.w500),),
                    Icon(FontAwesomeIcons.angleRight,size: height*0.02,color: Colors.grey,),
                  ],)
                ]),
              );
  }
}
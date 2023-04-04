import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodei/main.dart';
class OnboardingFirst extends StatelessWidget {
  const OnboardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return   Column(
        children: [
          SizedBox(height: height*.15,),
      Container(
        height: height*.25,
        width: width*0.8,
        child: Expanded(child: SvgPicture.asset("assets/onboarding_one.svg",height: height*0.25,width: width*0.7,))),
      SizedBox(height: height*0.07,),
      Text("Nearby restaurants",style: TextStyle(fontSize: height*0.03,fontWeight: FontWeight.w600),),
      Text("You don't have to go far to find a good restaurant,",style: TextStyle(fontSize: height*0.016,color: Colors.grey),),
      Text("we have provided all the restaurants that is",style: TextStyle(fontSize: height*0.016,color: Colors.grey),),
      Text("near you",style: TextStyle(fontSize: height*0.016,color: Colors.grey),),
      ]
    );
  }
}
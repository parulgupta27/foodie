import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodei/main.dart';
class OnboardingThird extends StatelessWidget {
  const OnboardingThird({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Column(children: [
    SizedBox(height: height*0.15,),
    Container(
      height: height*0.25,
      width: width*0.8,
      child: Expanded(child: SvgPicture.asset("assets/onboarding_three.svg",height: height*0.25,))),
    SizedBox(height: height*0.08,),
    Text("Good food at cheap price",style: TextStyle(fontSize: height*0.03),),
    Text("You can eat at expensive restaurants at ",style: TextStyle(fontSize: height*0.015,color: Colors.grey),),
    Text("cheap price",style: TextStyle(fontSize: height*0.015,color: Colors.grey),),

    ]);
  }
}
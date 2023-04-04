import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodei/main.dart';
class OnboardingSecond extends StatelessWidget {
  const OnboardingSecond({super.key});

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
      child: Expanded(child: SvgPicture.asset("assets/onboarding_two.svg",height: height*0.25,))),
    SizedBox(height: height*0.07,),
    Text("Select the Favorites Menu",style: TextStyle(fontSize: height*0.03),),
    Text("Now eat well, don't leave the house, You can,",style: TextStyle(fontSize: height*0.015,color: Colors.grey),),
    Text("choose your favorite food only with",style: TextStyle(fontSize: height*0.015,color: Colors.grey),),
    Text("one click",style: TextStyle(fontSize: height*0.015,color: Colors.grey),),

    ]);
  }
}
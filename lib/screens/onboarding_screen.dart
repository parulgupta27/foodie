import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodei/main.dart';
import 'package:foodei/screens/login_screen.dart';
import 'package:foodei/screens/onboarding_screens/onboarding_first_screen.dart';
import 'package:foodei/screens/onboarding_screens/onboarding_second_screen.dart';
import 'package:foodei/screens/onboarding_screens/onboarding_third_screen.dart';

List <Widget> screens=[
  OnboardingFirst(),
  OnboardingSecond(),
  OnboardingThird(),
];
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
    int i=0;
  @override

  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    width=size.width;
    height=size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            screens[i],
            SizedBox(height: height*0.22,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    
                    },
                    child: Text("Skip",style: TextStyle(fontWeight: FontWeight.w500,fontSize: height*0.02),)),
                  Row(
                    children: [Icon(Icons.circle_rounded,size: height*0.013,color: i==0?Colors.green:Colors.grey,),
                    SizedBox(width: width*0.01,),
                    Icon(Icons.circle_rounded,size: height*0.013,color: i==1?Colors.green:Colors.grey,),
                     SizedBox(width: width*0.01,),
                    Icon(Icons.circle_rounded,size: height*0.013,color: i==2?Colors.green:Colors.grey,)
                    ],
                  ),
                  IconButton(onPressed: (){
                    if(i<2){
                      i++;
                    }
                    else{
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    }
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.arrow_forward,color: Colors.green,)),
                ],
              ),
            ),
          ],
        ),
        )
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodei/main.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(height * 0.02),
      child: Container(
        width: double.infinity,
        height: height * 0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 0.02),
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.025),
          child: Row(
            children: [
              Container(
                height: height * 0.1,
                width: height * 0.1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(height * 0.018),
                  child: Image.asset(
                    "assets/biryani.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: width*0.02,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hotel Zaman Restaurant",style: TextStyle(fontSize: height*0.020,fontWeight: FontWeight.w600),),
                  SizedBox(height: height*0.01,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: Colors.green,
                        size: height * 0.02,
                      ),
                      Column(children: [
                        Text("Kazi Deiry, Taiger Pass",style: TextStyle(color: Colors.grey),),
                        Text("Chittagong",style: TextStyle(color: Colors.grey),),
                      ],),
                      
                      Padding(
                        padding:  EdgeInsets.all(height*0.01),
                        child: Container(
                          height: height*0.03,
                          width: width*0.2,
                          decoration: BoxDecoration(color: Colors.green,
                          borderRadius: BorderRadius.circular(height*0.008)),
                          child: Center(child: Text("Book",style: TextStyle(color: Colors.white),),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

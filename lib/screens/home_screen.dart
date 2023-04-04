import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodei/main.dart';
import 'package:foodei/widgets/new_food_card.dart';
import 'package:foodei/widgets/restaurant_card.dart';
import 'package:foodei/widgets/see_all_options.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  Icon icon = Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.bars,
                    size: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: Colors.green,
                        size: height * 0.024,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Text(
                        "IIT Delhi",
                        style: TextStyle(
                            fontSize: height * 0.020,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: height * 0.02,
                    child: Image.asset("assets/dp.gif"),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                child: Center(
                  child: Container(
                    height: height * 0.04,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 217, 215, 215),
                      borderRadius: BorderRadius.circular(height*0.013),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: height*0.03,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: " Search",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.05,
                                  color: Color.fromARGB(255, 217, 215, 215)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.05,
                                  color: Color.fromARGB(255, 216, 213, 213)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              SeeAllOption(
                  "Today New Arrival", "Best of the today food list update"),
              SizedBox(
                height: height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: height * 0.25,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        NewFoodCard(),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        NewFoodCard(),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        NewFoodCard(),
                      ]),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SeeAllOption(
                  "Booking Restaurant", "Check your city Near by Restaurant"),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    RestaurantCard(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RestaurantCard(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RestaurantCard(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RestaurantCard(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

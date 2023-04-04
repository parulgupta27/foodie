import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodei/main.dart';

class NewFoodCard extends StatelessWidget {
  const NewFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(height * 0.02),
      elevation: 5,
      child: Container(
        height: height * 0.23,
        width: width * 0.4,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(height * 0.02)),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(height * 0.01),
          child: Column(children: [
            Container(
              height: height * 0.13,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(height * 0.018),
                    topRight: Radius.circular(height * 0.018)),
                child: Image.asset(
                  "assets/biryani.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Text(
              "Chicken Biryani",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: height * 0.02),
            ),
            SizedBox(
              height: height * 0.008,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.green,
                  size: height * 0.02,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Column(children: [
                  Text(
                    "Amborsia Hotel &",
                    style:
                        TextStyle(color: Colors.grey, fontSize: height * 0.015),
                  ),
                  Text(
                    "Restaurant",
                    style:
                        TextStyle(color: Colors.grey, fontSize: height * 0.015),
                  )
                ]),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

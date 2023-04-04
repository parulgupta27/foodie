import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodei/main.dart';
import 'package:foodei/widgets/custom_button.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: height * 0.259,
            ),
            CircleAvatar(
              radius: height * 0.06,
              backgroundColor: Colors.green,
              child: Icon(
                FontAwesomeIcons.check,
                color: Colors.white,
                size: height * 0.04,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text("Success",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.035,
                    fontWeight: FontWeight.w800)),
            SizedBox(
              height: 0.02 * height,
            ),
            Text("Please check your email for create",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500)),
            Text("a new Password",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: height * 0.03,
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: height * 0.02),
                    children: [
                  TextSpan(text: "Can't get email? "),
                  TextSpan(
                      text: "Resubmit", style: TextStyle(color: Colors.green)),
                ])),
            SizedBox(
              height: height * 0.2,
            ),
            CustomButton(buttonText: "Back Email"),
          ],
        )),
      ),
    );
  }
}

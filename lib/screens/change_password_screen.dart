import 'package:flutter/material.dart';
import 'package:foodei/main.dart';
import 'package:foodei/utils/text_form_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  var _passwordController=TextEditingController();
  var _passwordConfirmController=TextEditingController();
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.11,
              ),
              Text(
                "Change New Password",
                style: TextStyle(
                    fontSize: height * 0.03, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: height * 0.007),
              Text(
                "Enter a different password with the previous",
                style: TextStyle(
                    fontSize: height * 0.019,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: height * 0.15,
              ),
              Text(
                "New Password",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: height * 0.02,
                    color: Colors.grey),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              TextFormFieldWidget(
                  _passwordConfirmController, true, "New password"),
              SizedBox(
                height: height * 0.013,
              ),
              Text(
                "Confirm Password",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: height * 0.02,
                    color: Colors.grey),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              TextFormFieldWidget(
                  _passwordConfirmController, true, "Confirm password"),
              
              SizedBox(
                height: height * 0.20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(height * 0.025),
                  ),
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: height * 0.025),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
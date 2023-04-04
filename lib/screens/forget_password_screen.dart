import 'package:flutter/material.dart';
import 'package:foodei/main.dart';
import 'package:foodei/utils/text_form_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  var _emailController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
  }

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
                height: height * 0.08,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: height * 0.03, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: height * 0.007),
              Text(
                "Enter your registered email below",
                style: TextStyle(
                    fontSize: height * 0.023,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: height * 0.21,
              ),
              Text(
                "Email Address",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: height * 0.02,
                    color: Colors.grey),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              TextFormFieldWidget(
                  _emailController, false, "Eg parul@foodie.com"),
              SizedBox(
                height: height * 0.013,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: height * 0.018,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(text: "Remember Password?"),
                      TextSpan(
                          text: "Sign in",
                          style: TextStyle(color: Colors.green)),
                    ]),
              ),
              SizedBox(
                height: height * 0.25,
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
                    "Submit",
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

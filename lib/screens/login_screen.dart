import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:foodei/widgets/custom_button.dart';
import '/bottom_sheets/login_bottom_sheet.dart';
import '/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                    _gap(height * 0.12),
                  SvgPicture.asset(
                    "assets/login_page_background.svg",
                    height: height * 0.25,
                  ),
                    _gap(height * 0.08),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: height * 0.04, fontWeight: FontWeight.w500),
                  ),
                    _gap(height * 0.025),
                  SizedBox(
                    width: width * 0.8,
                    child: Text(
                      "Before Enjoying FoodMedia Services Please Register First",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                    _gap(height * 0.1),
                    CustomButton(
                      buttonText: 'Create Account',
                      onTap: () => _onButtonClick(context, 0),
                    ),
                    _gap(height * 0.024),
                    CustomButton(
                      buttonText: 'Login',
                      textColor: const Color.fromARGB(232, 50, 163, 95),
                      color: const Color.fromARGB(232, 167, 252, 201),
                      onTap: () => _onButtonClick(context, 1),
                    ),
                    _gap(height * 0.025),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Text.rich(
                        const TextSpan(
                            text:
                            'By logging in or registering, you have agreed to ',
                        children: [
                          TextSpan(
                              text: 'the Terms and Conditions ',
                              style: TextStyle(
                                  color: Color.fromRGBO(50, 183, 104, 1))),
                          TextSpan(text: 'And '),
                          TextSpan(
                              text: 'Privacy Policy.',
                              style: TextStyle(
                                  color: Color.fromRGBO(50, 183, 104, 1)))
                        ]),
                    style: TextStyle(fontSize: height * 0.016),
                    textAlign: TextAlign.center,
                  )
                )
                  ],
                ),
              ),
            ),
      ),
        ));
  }
  Widget _gap(double height) {
    return SizedBox(height: height);
  }


  void _onButtonClick(BuildContext context, int index) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return LoginBottomSheet(index: index);
        });
  }
}

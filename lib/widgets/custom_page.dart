import 'package:flutter/material.dart';
import 'package:foodei/main.dart';
import '../screens/forget_password_screen.dart';
import 'custom_button.dart';

class CustomPage extends StatelessWidget {
  final int index;
  final TextEditingController nameEmailController;
  final TextEditingController passwordController;
  final TextEditingController? createAccountEmailController;
  final VoidCallback? onEditingComplete;
  final bool allDetailsFilled;

  const CustomPage(
      {required this.index,
      required this.nameEmailController,
      required this.passwordController,
      this.createAccountEmailController,
      this.onEditingComplete,
        required this.allDetailsFilled,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _gap(height * 0.02),
      Text(
        _isLoginPage ? "Email Address" : 'Full Name',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: height * 0.016),
      ),
      _gap(height * 0.009),
      TextFormField(
        controller: nameEmailController,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
            hintText:
                _isLoginPage ? 'Eg email@gmail.com' : 'Enter your full name',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(height * 0.02))),
      ),
      _gap(height * 0.025),
      if (!_isLoginPage)
        Text(
          "Email address",
          style:
              TextStyle(fontWeight: FontWeight.w500, fontSize: height * 0.016),
        ),
      if (!_isLoginPage) _gap(height * 0.0065),
      if (!_isLoginPage)
        TextFormField(
          controller: createAccountEmailController,
          onEditingComplete: onEditingComplete,
          decoration: InputDecoration(
              hintText: 'Eg name@gmail.com',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * 0.02))),
        ),
      if (!_isLoginPage) _gap(height * 0.025),
      Text(
        "Password",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: height * 0.016),
      ),
      _gap(height * 0.0065),
      TextFormField(
        controller: passwordController,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
            hintText: '**** **** ****',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(height * 0.02))),
      ),
      _gap(height * 0.01),
      if (_isLoginPage)
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen()));
            },
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.green),
              textAlign: TextAlign.end,
            ),
          ),
        ),
      _gap(height * 0.02),
      CustomButton(
        buttonText: _isLoginPage ? 'Login' : 'Registration',
        onTap: _onButtonClick,
        color: allDetailsFilled?Colors.green:Color.fromARGB(255, 232, 230, 230),
      ),
      _gap(height * 0.02),
      const CustomButton(
        buttonText: 'Login with Google',
        color: Color.fromARGB(255, 232, 230, 230),
        textColor: Colors.black,
      ),
    ]);
  }

  void _onButtonClick() {

  }

  Widget _gap(double height) {
    return SizedBox(height: height);
  }

  bool get _isLoginPage {
    return index == 1;
  }
}

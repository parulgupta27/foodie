import 'package:flutter/material.dart';
import 'package:foodei/screens/change_password_screen.dart';
import 'package:foodei/screens/email_verification_screen.dart';
import 'package:foodei/screens/forget_password_screen.dart';
import 'package:foodei/screens/home_screen.dart';
import 'package:foodei/screens/login_screen.dart';
import 'package:foodei/screens/onboarding_screen.dart';
import 'package:foodei/screens/onboarding_screens/onboarding_first_screen.dart';
import 'package:foodei/utils/screen_tuils.dart';
late double height=900;
late double width=500;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtils.removeSystemBars();
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:LoginScreen()));
}

import 'package:flutter/material.dart';
import 'package:foodei/main.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final double? buttonHeight;
  final double? buttonWidth;
  final String buttonText;
  final Color? textColor;
  final VoidCallback? onTap;

  const CustomButton(
      {required this.buttonText,
      this.color,
      this.buttonWidth,
      this.buttonHeight,
      this.textColor,
        this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: buttonHeight ?? height * 0.06,
          width: buttonWidth ?? width * 0.7,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color ?? Colors.green,
              borderRadius: BorderRadius.circular(height * 0.014)),
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: height * 0.022,
            ),
          ),
        ),
      ),
    );
  }
}

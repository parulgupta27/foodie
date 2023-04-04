import 'package:flutter/material.dart';
class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget(this.controller,this.obsecure,this.hintText);
  TextEditingController controller;
  bool obsecure;
  String hintText;
  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState(this.controller,this.obsecure,this.hintText);
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  TextEditingController controller;
  bool obsecure;
  String hintText;
  _TextFormFieldWidgetState(this.controller,this.obsecure,this.hintText);
  Widget build(BuildContext context) {
    return TextFormField(
    validator: (value) {
      return (value == null ) ? 'Please Enter a valid '+hintText : null;
    },
    controller: controller,
    obscureText: obsecure,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        
        borderSide: BorderSide(width: 3)),
    ),
    );
  }
}
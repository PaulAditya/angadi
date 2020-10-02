import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget icon;
  final String hintText;
  final bool obscured;

  CustomTextField({
    Key key,
    this.icon,
    this.hintText,
    this.obscured = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * .05),
      width: width,
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white30,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: width * .03,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        obscureText: obscured,
      ),
    );
  }
}

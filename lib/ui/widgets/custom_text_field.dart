import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Size size;
  final String hintText;
  final IconData iconData;
  final bool isPassword;

  const CustomTextField({
    Key? key, required this.size, required this.hintText,
    required this.iconData, this.isPassword = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffEAF0F7)
      ),
      child: TextField(
          obscureText: isPassword?  true : false,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              suffixIcon: Icon(iconData, color: Colors.grey,)
          )),
    );
  }
}

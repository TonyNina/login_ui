import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  
  final controller;
  final String hinText;
  final bool obscuredText;


  const MyTextField({
    Key? key, 
    required this.controller, 
    required this.hinText, 
    required this.obscuredText
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller, 
        obscureText: obscuredText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            fillColor: const Color.fromRGBO(235, 235, 235, 1),
            filled: true,
            hintText: hinText,
            hintStyle: const TextStyle(color: Colors.grey)
            ),
      ),
    );
  }
}

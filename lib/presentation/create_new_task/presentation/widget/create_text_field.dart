import 'package:flutter/material.dart';

class CreateTextField extends StatelessWidget {
  CreateTextField({Key? key, required this.controller, required this.text})
      : super(key: key);
  String text;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    controller = TextEditingController(text: text);
    return TextField(
      controller: controller,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

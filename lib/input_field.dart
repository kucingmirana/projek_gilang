import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool isObscure;
  final TextEditingController controller;

  const InputField({
    @required this.hint,
    this.controller,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: TextField(
        controller: this.controller,
        obscureText: this.isObscure,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.width * 0.5),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: this.hint,
            fillColor: Colors.white70),
      ),
    );
  }
}

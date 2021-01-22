import 'package:flutter/material.dart';

import 'package:projek_gilang/input_field.dart';
import 'package:projek_gilang/register/components/register_screen.dart';

import 'package:projek_gilang/rounded_button.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('DAFTAR'),
        textTheme: TextTheme(
            headline6: TextStyle(
          color: Color(0XFF4C4C4C),
          fontSize: 14,
          fontFamily: 'Roboto',
        )),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: RegisterScreen(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
    );
  }
}

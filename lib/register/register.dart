import 'package:flutter/material.dart';

import 'package:projek_gilang/input_field.dart';

import 'package:projek_gilang/rounded_button.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Daftar',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        body: Register(),
      ),
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'logo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34.0,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 48),
          InputField(
            hint: 'Email',
            controller: emailController,
          ),
          InputField(
            hint: 'Password',
            controller: passwordController,
            isObscure: true,
          ),
          InputField(
            hint: 'Ulangi password',
            controller: rePasswordController,
            isObscure: true,
          ),
          RoundedButton(
            text: 'Daftar',
            onTap: () {},
          )
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gradient_input_border/gradient_input_border.dart';
import 'package:projek_gilang/constants.dart';
import 'package:projek_gilang/sign_in/components/social_icon.dart';
import 'package:projek_gilang/size_config.dart';
import 'icon_data.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: SvgPicture.asset("assets/images/logo.svg"),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: GradientOutlineInputBorder(
          focusedGradient: InputFormGradient,
          unfocusedGradient: InputFormGradient,
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: GradientOutlineInputBorder(
          focusedGradient: InputFormGradient,
          unfocusedGradient: InputFormGradient,
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final ulangipassword = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Ulangi Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: GradientOutlineInputBorder(
          focusedGradient: InputFormGradient,
          unfocusedGradient: InputFormGradient,
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final registerButton = Container(
      height: 50,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {},
        padding: EdgeInsets.all(0),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffD8A25C),
                Color(0xffFFDD88),
                Color(0xffFEECCA),
              ],
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
                maxWidth: double.infinity,
                minHeight: getProportionateScreenHeight(40)),
            child: Text(
              'Daftar',
              style: TextStyle(
                color: Color(0xFF4C4C4C),
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/shapeatas.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
            getProportionateScreenHeight(20),
            getProportionateScreenHeight(14),
            getProportionateScreenHeight(20),
            getProportionateScreenHeight(20),
          ),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              logo,
              SizedBox(height: getProportionateScreenHeight(37)),
              email,
              SizedBox(height: getProportionateScreenHeight(28)),
              password,
              SizedBox(height: getProportionateScreenHeight(28)),
              ulangipassword,
              SizedBox(height: getProportionateScreenHeight(42)),
              registerButton,
            ],
          ),
        ),
      ],
    );
  }
}

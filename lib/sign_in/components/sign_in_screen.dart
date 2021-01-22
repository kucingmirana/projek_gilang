import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gradient_input_border/gradient_input_border.dart';
import 'package:projek_gilang/constants.dart';
import 'package:projek_gilang/sign_in/components/social_icon.dart';
import 'package:projek_gilang/size_config.dart';
import 'icon_data.dart';

class SignInScreen extends StatelessWidget {
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

    final loginWith = Container(
      alignment: Alignment.center,
      child: Text(
        'Lupa Password?',
        style: TextStyle(
          color: Color(0xFF7192E5),
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
      ),
    );

    final atau = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: getProportionateScreenWidth(120),
            height: 1.0,
            color: Colors.black26.withOpacity(.2),
          ),
        ),
        Text(
          ' atau ',
          style: TextStyle(
              color: Color(0xFFC3BEBE),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: getProportionateScreenWidth(120),
            height: 1.0,
            color: Colors.black26.withOpacity(.2),
          ),
        ),
      ],
    );

    final loginButton = Container(
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
              'MASUK',
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

    final socialIcon = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          colors: [
            Color(0xFF102397),
            Color(0xFF187adf),
            Color(0xFF00eaf8),
          ],
          iconData: CustomIcons.facebook,
          onPressed: () {},
        ),
        SocialIcon(
          colors: [
            Color(0xFF102397),
            Color(0xFF187adf),
            Color(0xFF00eaf8),
          ],
          iconData: CustomIcons.googlePlus,
          onPressed: () {},
        ),
      ],
    );

    return Stack(
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/background_login.svg",
          //alignment: Alignment.center,
          fit: BoxFit.fitWidth,
          color: Color(0XFF666666).withOpacity(0.15),
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
              SizedBox(height: getProportionateScreenHeight(57)),
              email,
              SizedBox(height: getProportionateScreenHeight(28)),
              password,
              SizedBox(height: getProportionateScreenHeight(42)),
              loginButton,
              SizedBox(height: getProportionateScreenHeight(22)),
              loginWith,
              SizedBox(height: getProportionateScreenHeight(30)),
              atau,
              SizedBox(height: getProportionateScreenHeight(32)),
              socialIcon,
            ],
          ),
        ),
      ],
    );
  }
}

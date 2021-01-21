import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projek_gilang/register/register.dart';
import 'package:projek_gilang/sign_in/sign_in.dart';

import 'package:projek_gilang/size_config.dart';

class MenuAwalScreen extends StatelessWidget {
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

    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Color(0xffD8A25C),
        Color(0xffFFDD88),
        Color(0xffFEECCA),
      ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    final assalamualaikum = Container(
      alignment: Alignment.center,
      child: Text(
        'As-salamualaikum',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          foreground: Paint()..shader = linearGradient,
        ),
      ),
    );

    final deskripsi = Container(
      alignment: Alignment.center,
      child: Text(
        'Sebelum memulai ada baiknya membaca bismillah dan mengakhiri dengan alhamdulillah',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
        ),
      ),
    );

    final loginButton = Container(
      height: 50,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignIn()));
        },
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
                letterSpacing: 1.5,
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

    final registerButton = Container(
      height: 50,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
        padding: EdgeInsets.all(0),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
                maxWidth: double.infinity,
                minHeight: getProportionateScreenHeight(40)),
            child: Text(
              'Daftar',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.deepOrangeAccent,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      ),
    );

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Background_menu_awal.png"),
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
              SizedBox(height: getProportionateScreenHeight(27)),
              logo,
              SizedBox(height: getProportionateScreenHeight(200)),
              assalamualaikum,
              SizedBox(height: getProportionateScreenHeight(10)),
              deskripsi,
              SizedBox(height: getProportionateScreenHeight(150)),
              loginButton,
              SizedBox(height: getProportionateScreenHeight(20)),
              registerButton,
            ],
          ),
        ),
      ],
    );
  }
}

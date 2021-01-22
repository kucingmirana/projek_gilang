import 'package:flutter/material.dart';
import 'package:projek_gilang/size_config.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final IconData iconData;
  final Function onPressed;
  SocialIcon({this.colors, this.iconData, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Container(
        width: getProportionateScreenWidth(45.0),
        height: getProportionateScreenHeight(45.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Color.fromRGBO(237, 195, 126, 0.37)),
        child: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: onPressed,
          child: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}

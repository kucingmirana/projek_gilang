import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const RoundedButton({
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(16),
      height: 45,
      width: width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.5)),
        elevation: 0,
        color: Colors.orange,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}

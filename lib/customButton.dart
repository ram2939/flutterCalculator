import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(3.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          color: Colors.orange),
      child: new Text(
        text,
        style: new TextStyle(color: Colors.white, fontSize: 30.0),
      ),
    );
  }
}
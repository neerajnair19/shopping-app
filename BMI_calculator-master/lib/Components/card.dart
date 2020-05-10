import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  Color colour;
  Widget widget;

  ReusableCard(Color color, Widget widget){
    this.colour = color;
    this.widget = widget;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: colour,
        elevation: 10,
        child: Container(
          child: widget,
        ),
      ),
    );
  }
}
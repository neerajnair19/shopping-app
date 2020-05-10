import 'package:flutter/material.dart';



class cardIcon extends StatelessWidget {

  IconData icon;
  String text;

  cardIcon(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E98)
          ),
        )
      ],
    );
  }

}
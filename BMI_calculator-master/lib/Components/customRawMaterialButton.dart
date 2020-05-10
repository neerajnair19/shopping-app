import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon, @required this.onPressed});

  final Icon icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: icon,
    );
  }

}

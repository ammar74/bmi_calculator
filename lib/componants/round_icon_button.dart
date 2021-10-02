import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, this.onPressed);
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xff455A64),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      onPressed: onPressed,
    );
  }
}

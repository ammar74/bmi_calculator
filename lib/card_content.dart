import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);

class CustomIconWidget extends StatelessWidget {
  CustomIconWidget(this.customIcon, this.iconName);

  final IconData customIcon;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          customIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconName,
          style: labelTextStyle,
        ),
      ],
    );
  }
}

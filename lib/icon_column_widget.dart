import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconColumWidget extends StatelessWidget {
  final IconData ourfontIcon;

  final String ourText;

  IconColumWidget({this.ourfontIcon, this.ourText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ourfontIcon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          ourText,
          style: kStyles,
        ),
      ],
    );
  }
}

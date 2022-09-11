import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.icon, this.fabOnpress});
  final IconData icon;
  final Function fabOnpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xff4c4f5e),
      elevation: 60.0,
      onPressed: fabOnpress,
      child: Icon(
        icon,
        color: kWhiteColor,
      ),
    );
  }
}

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class bottomButton extends StatelessWidget {
  final String text;
  final Function tap;
  bottomButton({@required this.text, @required this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 15.0),
        color: kBottomColor,
        height: 50.0,
        width: double.infinity,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color ourColor;
  final Widget ourWidget;
  final Function onpress;
  MyContainer({@required this.ourColor, this.ourWidget, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: ourWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: ourColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

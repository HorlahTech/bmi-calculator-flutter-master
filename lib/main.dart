import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0e21),
        scaffoldBackgroundColor: Color(0xFF0A0e21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0e21),
        ),
      ),
      home: InputPage(),
    );
  }
}

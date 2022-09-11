import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class OurResultPage extends StatelessWidget {
  final String resultNumber;
  final String resultString;
  final String resultExplain;
  OurResultPage({this.resultString, this.resultNumber, this.resultExplain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kBigText,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: kAllColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultString,
                    style: TextStyle(
                        color: kGreenColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    resultNumber,
                    style: kBigText,
                  ),
                  Text(
                    resultExplain,
                    style: kStyles,
                  )
                ],
              ),
            ),
          ),
          bottomButton(
            text: 'RE-CALCULATE',
            tap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return OurResultPage();
              //     },
              //   ),
              // );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

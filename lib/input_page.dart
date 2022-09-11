import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/calculate_bmi.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_column_widget.dart';
import 'package:bmi_calculator/my_container.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { maleGender, femaleGender }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HEALTHY'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    ourColor: gender == Gender.maleGender
                        ? kActiveColor
                        : kInactiveColor,
                    onpress: () {
                      setState(() {
                        gender = Gender.maleGender;
                      });
                    },
                    ourWidget: IconColumWidget(
                      ourfontIcon: FontAwesomeIcons.male,
                      ourText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    ourColor: gender == Gender.femaleGender
                        ? kActiveColor
                        : kInactiveColor,
                    onpress: () {
                      setState(() {
                        gender = Gender.femaleGender;
                      });
                    },
                    ourWidget: IconColumWidget(
                      ourfontIcon: FontAwesomeIcons.female,
                      ourText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              ourColor: kAllColor,
              ourWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kStyles,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kBigText,
                      ),
                      Text(
                        'CM',
                        style: kStyles,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kWhiteColor,
                        inactiveTrackColor: kSliderInactiveColor,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                          pressedElevation: 15.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25),
                        thumbColor: kBottomColor,
                        overlayColor: Color(0x29eb1555)),
                    child: Slider(
                        value: height.toDouble(),
                        max: 220,
                        min: 50,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    ourColor: kAllColor,
                    ourWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kStyles,
                        ),
                        Text(
                          weight.toString(),
                          style: kBigText,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                fabOnpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                fabOnpress: () {
                                  setState(() {
                                    weight = weight - 1;
                                  });
                                },
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    ourColor: kAllColor,
                    ourWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kStyles,
                        ),
                        Text(
                          age.toString(),
                          style: kBigText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              fabOnpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              fabOnpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomButton(
            text: 'CALCULATE',
            tap: () {
              CalculateBmi calc = CalculateBmi(weight: weight, height: height);
              print(calc.dotheCalculation());

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OurResultPage(
                      resultString: calc.ourBmiResultText(),
                      resultNumber: calc.dotheCalculation(),
                      resultExplain: calc.interpretation(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  int weight = 30;

  int age = 10;
}

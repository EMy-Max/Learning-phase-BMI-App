import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';
import 'reuse_card.dart';
import 'gender_details.dart';
import 'results.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

GenderType? selectedGender;
int height = 180;
int weight = 60;
int age = 25;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFF01301F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == GenderType.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      customChild: const GenderDetails(
                        genderIcon: Icons.male,
                        genderName: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == GenderType.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      customChild: const GenderDetails(
                        genderIcon: Icons.female,
                        genderName: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ReuseableCard(
                  colour: kInactiveCardColor,
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kgenderTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kNumberStyles),
                          Text(
                            'cm',
                            style: kgenderTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                            thumbColor: kOrangeCard,
                            activeTrackColor: kIconColor,
                            overlayColor: const Color(0x29F75D00)),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            inactiveColor: const Color(0xFF8D8E98),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ReuseableCard(
                  colour: kInactiveCardColor,
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kgenderTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberStyles,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                print(weight);
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ReuseableCard(
                  colour: kInactiveCardColor,
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kgenderTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberStyles,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){

                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage(
                      bmiResults: calc.calculateBMI(),
                      resultText: calc.getResults(),
                      interpretation: calc.getInterpretation(),
                    ),),);
              },
              child: Expanded(
                child: Container(
                  color: kOrangeCard,
                  // margin: const EdgeInsets.only(top: 25),
                  width: double.infinity,
                  height: 80.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('CALCULATE',
                      style: kCalculateTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
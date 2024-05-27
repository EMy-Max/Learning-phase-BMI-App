import 'package:flutter/material.dart';
import 'constants.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmiResults, required this.interpretation, required this.resultText});

  final String bmiResults;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Your Result',
            style: kCalculateTextStyle,
            ),
            ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: kInactiveCardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(resultText.toUpperCase(),
                      style: TextStyle(
                        color: kOrangeCard,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(bmiResults,
                      style: kNumberStyles,
                    ),
                    Text(interpretation,
                    style: TextStyle(
                      color: kIconColor,
                      fontSize: 15,git init
                    ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

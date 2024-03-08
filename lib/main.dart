import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

enum GenderType { male, female }

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: kAppBarColor,
          foregroundColor: kIconColor,
          elevation: 3.0,
          shadowColor: kIconColor
        )
      ),
      home: InputPage(),
    );
  }
}




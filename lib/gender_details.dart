import 'package:flutter/material.dart';
import 'constants.dart';


class GenderDetails extends StatelessWidget {
  final IconData genderIcon;
  final String genderName;
  const GenderDetails({required this.genderIcon, required this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
          color: kIconColor,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          genderName,
          style: kgenderTextStyle
        )
      ],
    );
  }
}

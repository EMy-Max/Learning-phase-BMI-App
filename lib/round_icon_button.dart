import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: const CircleBorder(),
      fillColor: const Color(0x508D8E98),
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
      onPressed: onPressed,
      child: Icon(
        icon,
        color: kIconColor,
        size: 30,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableCard extends StatelessWidget {
  final Widget ?customChild;
  final Color colour;
  const ReuseableCard({super.key, this.customChild, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),),
        margin: const EdgeInsets.all(10),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: customChild,
        ),
      ),
    );
  }
}



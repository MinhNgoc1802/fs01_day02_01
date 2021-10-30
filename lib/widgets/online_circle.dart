import 'package:flutter/material.dart';
import 'package:fs01_day02_01/widgets/widgets.dart';

class CircleOnline extends StatelessWidget {
  const CircleOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: const Color(0xff7ED321),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            6,
          ),
        ),
        border: Border.all(
          color: Colors.white,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}

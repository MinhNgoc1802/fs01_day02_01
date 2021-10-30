import 'package:flutter/material.dart';
import 'package:fs01_day02_01/themes/app_colors.dart';

class NewMessageNumber extends StatelessWidget {
  const NewMessageNumber({
    Key? key,
    required this.number,
  }) : super(
          key: key,
        );

  final int number;

  @override
  Widget build(BuildContext context) {
    if (number > 0) {
      return Container(
        width: 18,
        height: 18,
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: AppColors.pinkAccent,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              9,
            ),
          ),
          border: Border.all(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

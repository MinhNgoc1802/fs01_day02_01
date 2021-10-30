import 'package:flutter/material.dart';
import 'package:fs01_day02_01/themes/app_colors.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({
    Key? key,
    required this.title,
    required this.callback,
  }) : super(key: key);
  final String title;
  final Function callback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: const BoxDecoration(
          gradient: AppColors.pinkAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(
              22,
            ),
          ),
        ),
      ),
    );
  }
}

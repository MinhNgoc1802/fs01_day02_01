import 'package:flutter/material.dart';
import 'package:fs01_day02_01/themes/app_colors.dart';

class AppDecoration {
  static const BoxDecoration bottomDivider = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: AppColors.dark,
        width: 1,
        style: BorderStyle.solid,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';

BoxDecoration FHeaderDecoration = BoxDecoration(
  gradient: const LinearGradient(colors: [
    Colors.transparent,
    FColors.bgLight1,
  ]),
  borderRadius: BorderRadius.circular(100),
);

OutlineInputBorder OutlineDecoration() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  );
}

import 'package:flutter/material.dart';
import 'package:portfolio_app/style/styles.dart';
import 'package:portfolio_app/utils/colors/colors.dart';

class FTextField extends StatelessWidget {
  const FTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.maxLines = 1,
  });
  final TextEditingController? controller;
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: FColors.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: FColors.whiteSecondary,
        focusedBorder: OutlineDecoration(),
        enabledBorder: OutlineDecoration(),
        border: OutlineDecoration(),
        hintText: hintText,
        hintStyle: const TextStyle(color: FColors.hintDark),
      ),
    );
  }
}

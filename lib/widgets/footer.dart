import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      color: FColors.scaffoldBg,
      child: const Text(
        'Made by Faisal Zafar © 2024',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: FColors.whitePrimary,
          fontSize: 14,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';

class ExperienceDesktop extends StatelessWidget {
  const ExperienceDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          ' •  Flutter Developer Intern at CARE',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: FColors.whitePrimary,
          ),
        ),
        Text(
          '(July 1, 2023 - Sept 1, 2023)',
          style: TextStyle(
            fontSize: 16,
            color: FColors.whiteSecondary,
          ),
        ),
      ],
    );
  }
}

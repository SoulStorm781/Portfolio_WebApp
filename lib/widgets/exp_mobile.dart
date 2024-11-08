import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          ' •  Flutter Developer Intern at CARE',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: FColors.whitePrimary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            '(July 1, 2023 - Sept 1, 2023)',
            style: TextStyle(
              fontSize: 12,
              color: FColors.whiteSecondary,
            ),
          ),
        ),
      ],
    );
  }
}

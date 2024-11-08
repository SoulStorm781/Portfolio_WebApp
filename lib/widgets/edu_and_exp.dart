import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/sizes/size.dart';
import 'package:portfolio_app/widgets/exp_desktop.dart';
import 'package:portfolio_app/widgets/exp_mobile.dart';

class EducationExperience extends StatelessWidget {
  const EducationExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: FColors.bgLight2,
      ),
      width: 900,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Education',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: FColors.whitePrimary,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' •  BE in Computer & Software Engineering ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: FColors.whitePrimary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              ' •  National University of Science and Technology',
              style: TextStyle(
                fontSize: 14,
                color: FColors.whitePrimary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              ' •  2020-2024',
              style: TextStyle(
                fontSize: 14,
                color: FColors.whiteSecondary,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: FColors.whitePrimary,
            ),
            const SizedBox(
              height: 20,
            ),

            //experience
            const Center(
              child: Text(
                'Experience',
                style: TextStyle(
                  fontSize: 26,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  color: FColors.whitePrimary,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (screenWidth >= FXMinDesktopWidth)
              ExperienceDesktop()
            else
              ExperienceMobile(),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' - Contributed to developing an attendance app using Flutter, focusing on implementing SSL/TLS certificates for app and user security.',
                      style: TextStyle(
                        fontSize: 14,
                        color: FColors.whitePrimary,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' - Handled the front-end aspects of the application.',
                      style: TextStyle(
                        fontSize: 14,
                        color: FColors.whitePrimary,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' - Gained practical experience with GitHub for version control and Postman for API testing and creation, deepening my understanding of Flutter. ',
                      style: TextStyle(
                        fontSize: 14,
                        color: FColors.whitePrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

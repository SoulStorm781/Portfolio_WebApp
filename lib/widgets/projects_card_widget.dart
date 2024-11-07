import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/project_utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.projects,
  });
  final ProjectUtils projects;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: FColors.bgLight2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            projects.image,
            height: 150,
            width: 260,
            fit: BoxFit.cover,
          ),

          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 8),
            child: Text(
              projects.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: FColors.whitePrimary,
              ),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projects.subTitle,
              style: const TextStyle(
                fontSize: 11,
                color: FColors.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            color: FColors.bgLight1,
            child: Row(
              children: [
                const Text(
                  'Available on: ',
                  style: TextStyle(
                    color: FColors.yellowSecondary,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                if (projects.githubLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [projects.githubLink]);
                      },
                      child: Image.asset(
                        'assets/icons/git.png',
                        width: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (projects.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/android.png',
                        width: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (projects.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/ios.png',
                        width: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/colors/colors.dart';
import 'package:portfolio_app/utils/project_utils/project_utils.dart';
import 'package:portfolio_app/widgets/projects_card_widget.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //title
          const Text(
            'Personal Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: FColors.whitePrimary,
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < personalProjects.length; i++)
                  ProjectCardWidget(
                    projects: personalProjects[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

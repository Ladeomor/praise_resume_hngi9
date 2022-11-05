import 'package:flutter/material.dart';
import 'package:portfolioo_app/components/project_card.dart';
import 'package:portfolioo_app/constants/projects.dart';
import 'package:portfolioo_app/constants/text.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLargeText(text: 'Recent Projects',size: 16,),
          SizedBox(height: 10,),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                ProjectCard(project: Projects.projects[0]),
                ProjectCard(project: Projects.projects[1]),
                ProjectCard(project: Projects.projects[2]),
                ProjectCard(project: Projects.projects[3]),

              ],
            ),
          )
        ],
      ),
    );
  }
}

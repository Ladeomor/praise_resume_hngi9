import 'package:flutter/material.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/recent_projects.dart';

class RecentProjectLandscapeSection extends StatelessWidget {
  const RecentProjectLandscapeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.1,
      height: MediaQuery.of(context).size.height/1.3,
      child: const RecentProjects(),
    );
  }
}

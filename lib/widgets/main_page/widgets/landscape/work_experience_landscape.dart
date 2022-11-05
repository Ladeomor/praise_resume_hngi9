import 'package:flutter/material.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/work_experience.dart';



class WorkExperienceLandscapeSection extends StatelessWidget {
  const WorkExperienceLandscapeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.1,
      height: MediaQuery.of(context).size.height/2,
      child: const WorkExperience(),
    );
  }
}



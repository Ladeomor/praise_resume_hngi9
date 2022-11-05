import 'package:flutter/material.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/prof_summary.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/skill_section.dart';

class LandscapeDetailsSection extends StatelessWidget {
  const LandscapeDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfSummary(),
        SizedBox(height: 20,),
        SkillSection(),


      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolioo_app/components/skill_component.dart';
import 'package:portfolioo_app/constants/text.dart';


class SkillSection extends StatelessWidget {
  const SkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLargeText(text: 'Skills', size: 16,),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                SkillComponent(icon: 'assets/images/flutter_logo.png', title: 'Flutter'),
                SizedBox(height: 20,),
                SkillComponent(icon: 'assets/images/figma_logo.png', title: 'Figma'),
                SizedBox(height: 20,),
                SkillComponent(icon: 'assets/images/laravel_logo.png', title: 'Laravel'),
                SizedBox(height: 20,),
                SkillComponent(icon: 'assets/images/python_logo.png', title: 'Python'),
                SizedBox(height: 20,),
                SkillComponent(icon: 'assets/images/java_logo.png', title: 'Java'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';

import '../../../../components/experience_card.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppLargeText(text: 'Work Experience', size: 16,),
              const SizedBox(height: 20,),
              const ExperienceCard(),

            ]
        )
    );
  }
}

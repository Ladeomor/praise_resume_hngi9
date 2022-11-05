import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';

class ProfSummary extends StatelessWidget {
  const ProfSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLargeText(text: 'Professional Summary', size: 16,),
          SizedBox(height: 10,),
          AppText(text: 'Aspiring Software Engineer who has a huge passion for solving problems and making lives easier.\n Has worked in a small team of four in an EdTech startup.\n Seeking to add value to this internship and come out a finalist.',size: 14,)
        ],
      ),
    );
  }
}
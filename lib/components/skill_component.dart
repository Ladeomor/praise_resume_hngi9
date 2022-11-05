import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';


class SkillComponent extends StatelessWidget {
  final String title;
  final String icon;
  const SkillComponent({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.12),
              offset: Offset(6, 4),
              blurRadius: 10,
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
            children: [
              Container(
                height: 50,
                  child: Image.asset(icon)),

              AppLargeText(text: title, size: 15,),
            ]

        ),
      ),
    );
  }
}

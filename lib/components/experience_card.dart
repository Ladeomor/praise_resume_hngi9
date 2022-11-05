import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';


class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade500,
            style: BorderStyle.solid,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppText(text:'Intern Developer\n at Peers App'),
              Spacer(),
              Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.orangeAccent
                          ),
                          child: Center(child: AppText(text:'Full Time', size: 12,))
                      ),
                    ),
                    AppLargeText(text:'July 31, 2022', size: 12,)
                  ]
              )
            ]
        )
    );
  }
}

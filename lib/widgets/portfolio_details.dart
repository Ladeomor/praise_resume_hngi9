import 'package:flutter/material.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/landscape/landscape_details_section.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/picture_header.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/landscape/picture_header_landscape.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/prof_summary.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/landscape/recent_project_landscape.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/recent_projects.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/skill_section.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/social_widget.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/work_experience.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/landscape/work_experience_landscape.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioDetails extends StatelessWidget {
  const PortfolioDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery
        .of(context)
        .orientation;
    return orientation == Orientation.portrait ? SafeArea(
      child: Column(
        children: [
          const PictureHeaderSection(),
          const SizedBox(height: 50,),
          const Divider(height: 20, indent: 16, endIndent: 16, thickness: 1,),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children:  [
                  const ProfSummary(),
                  const SizedBox(height: 10,),
                  const WorkExperience(),
                  const SizedBox(height: 10,),
                  const SkillSection(),
                  const SizedBox(height: 20,),
                  const RecentProjects(),
                  const Divider(thickness: 1,),
                  InkWell(
                    onTap: ()async{
                      if(!await launchUrl(mode: LaunchMode.externalApplication,Uri.parse('https://twitter.com/Praiseboluwa'))){
                        throw 'Could not launch page';
                      }
                    },
                      child: const SocialWidget(icon: 'assets/images/twitter.png', text: 'Twitter')),
                  InkWell(
                    onTap: ()async{
                      if(!await launchUrl(mode: LaunchMode.externalApplication,Uri.parse('https://github.com/Ladeomor'))){
                        throw 'Could not launch page';
                      }
                    },
                      child: const SocialWidget(icon: 'assets/images/github.png', text: 'Github')),
                  InkWell(
                    onTap: ()async{
                      if(await launchUrl(mode: LaunchMode.externalApplication, Uri.parse('https://www.linkedin.com/in/praise-odeyemi-622450179/'))){
                        throw 'Could not launch page';

                      }
                    },
                      child: const SocialWidget(icon: 'assets/images/linkedln.png', text: 'LinkedIn')),

                ],
              )),

        ],
      ),
    ) : Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: const [
            PictureHeaderSectionLandscape(),
           SizedBox(height: 10,),
           WorkExperienceLandscapeSection(),
           RecentProjectLandscapeSection(),
          ],
        ),
        const SizedBox(width: 20,),
        SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width / 2.5,
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: const LandscapeDetailsSection(),
        )
      ],
    );
  }


}


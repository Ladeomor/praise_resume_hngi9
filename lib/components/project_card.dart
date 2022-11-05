import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioo_app/constants/text.dart';
import 'package:portfolioo_app/provider/dark_theme_provider.dart';
import 'package:portfolioo_app/models/project_model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.12),
              offset: Offset(6, 4),
              blurRadius: 10,
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 150,
        width: 70,
        child: Row(
          children: [
            ClipRRect(

                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)
                ),
                child: Image.asset(project.imgUrl, fit: BoxFit.cover, width: 150, height: 150,

                )),
            SizedBox(width: 10,),
            Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(project.title, overflow: TextOverflow.ellipsis, softWrap: false, style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black ),),
                  Text(project.description, overflow: TextOverflow.fade, softWrap: false, maxLines: 2, style: GoogleFonts.poppins(fontSize: 12, color:Colors.black ),),
                  ElevatedButton(onPressed: ()async{
                    if(!await launchUrl(mode: LaunchMode.externalApplication,Uri.parse(project.gitUrl))){
                      throw 'Could not launch page';
                    }
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                      child: AppText(text:'View'))


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}



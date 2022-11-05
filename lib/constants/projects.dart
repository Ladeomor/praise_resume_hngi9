

import 'package:portfolioo_app/models/project_model.dart';

class Projects{
  static final List<ProjectModel> projects = [
    ProjectModel(imgUrl: 'assets/images/bub it.jpg', title: 'Bub it',  description: 'A url shortening application\n used to convert\n unpleasant links into\n shorter links', gitUrl: 'https://github.com/SH-MobileDev-Portfolio-1/bub_it'),
    ProjectModel(imgUrl: 'assets/images/locate me.jpg', title: 'Locate me',  description: 'A mobile application\n used to calculate distance\n between two\n locations', gitUrl: 'https://github.com/SH-MobileDev-Portfolio-1/locate_me'),
    ProjectModel(imgUrl: 'assets/images/mind_pal.jpg', title: 'Mind pal', description: 'A task management\n application where you can add\n edit, delete\n tasks.', gitUrl: 'https://github.com/SH-MobileDev-Portfolio-1/mind_pal'),
    ProjectModel(imgUrl: 'assets/images/jot_it.jpg', title: 'Jot it', description: 'A note application\n keeping all your notes\n in one place', gitUrl: 'https://github.com/SH-MobileDev-Portfolio-1/Jot-It'),


  ];
}
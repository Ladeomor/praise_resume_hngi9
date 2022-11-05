
import 'package:flutter/material.dart';
import 'package:portfolioo_app/widgets/main_page/widgets/portrait/picture_header.dart';
class PictureHeaderSectionLandscape extends StatelessWidget {
  const PictureHeaderSectionLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      height: MediaQuery.of(context).size.height/1.25,
      child: const PictureHeaderSection(),
    );
  }
}


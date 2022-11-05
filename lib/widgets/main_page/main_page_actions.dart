import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';
import 'package:portfolioo_app/utils/utils.dart';

class MainPageActions extends StatelessWidget {
  final ScrollController sc;
  const MainPageActions({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = Utils.isMobile(context);

    return isMobile
        ? Column(
      children: getWidgets(sc, context, isMobile: true),
    )
        : Row(
      children: getWidgets(sc, context),
    );  }
}

List<Widget> getWidgets(ScrollController sc, BuildContext context,
    {bool isMobile = false}) {
  int scrollDur = isMobile ? 800 : 500;
  return [
    Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
      child: TextButton(
        onPressed: () {
          if (isMobile) Navigator.pop(context);
          sc.animateTo(
            0,
            duration: Duration(milliseconds: scrollDur),
            curve: Curves.easeIn,
          );
        },
        child: AppLargeText(text:'Professional Summary', size: isMobile? 16 : 12,),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
      child: TextButton(
        onPressed: () {
          if (isMobile) Navigator.pop(context);
          sc.animateTo(
            isMobile ? 1100 : 200,
            duration: Duration(milliseconds: scrollDur),
            curve: Curves.easeIn,
          );
        },
        child: AppLargeText(text: 'Work Experience',size: isMobile? 16:12,)
      ),
    ),
    Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
      child: TextButton(
        onPressed: () {
          if (isMobile) Navigator.pop(context);
          sc.animateTo(
            100,
            duration: Duration(milliseconds: scrollDur),
            curve: Curves.easeIn,
          );
        },
        child: AppLargeText(text: 'Skills', size: isMobile?16:12,)
      ),
    ),
    Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
      child: TextButton(
        onPressed: () {
          if (isMobile) Navigator.pop(context);
          sc.animateTo(
            isMobile ? 2600 : 1900,
            duration: Duration(milliseconds: scrollDur),
            curve: Curves.easeIn,
          );
        },
        child:  AppLargeText(text: 'Recent Projects', size: isMobile? 16:12,)
      ),
    )
  ];
}


import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';

class SocialWidget extends StatelessWidget {
  final String icon;
  final String text;
  const SocialWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
       trailing:AppText(text: text),
        leading:Image.asset(icon,height: 20,)

    );
  }
}

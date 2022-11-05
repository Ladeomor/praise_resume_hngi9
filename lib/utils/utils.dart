

import 'package:flutter/material.dart';

class Utils extends StatelessWidget {
  final BuildContext context;
   Utils({Key? key, required this.context}) : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

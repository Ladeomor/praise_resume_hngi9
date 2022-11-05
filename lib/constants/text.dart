import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioo_app/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';


class AppText extends StatelessWidget {
  final String text;
  final Color color;
  double size;



  AppText({Key? key, required this.text, this.color=Colors.black54, this.size = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    return Text(
      text,
      style: GoogleFonts.quicksand(color: themeProvider.isDarkMode?Colors.white:Colors.black, fontSize: size)
    );
  }
}


class AppLargeText extends StatelessWidget {
  final String text;
  final Color color;
  double size;



  AppLargeText({Key? key, required this.text, this.color=Colors.black87, this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);

    return Text(
        text,
        style: GoogleFonts.poppins(color: themeProvider.isDarkMode?Colors.white:Colors.black, fontSize: size, fontWeight: FontWeight.w500)
    );
  }
}

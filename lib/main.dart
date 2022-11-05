import 'package:flutter/material.dart';
import 'package:portfolioo_app/provider/dark_theme_provider.dart';
import 'package:portfolioo_app/screens/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    child: Consumer<ThemeProvider>(
    builder: (context, ThemeProvider themeProvider, child) {

      return MaterialApp(
        title: 'My Portfolio',
        debugShowCheckedModeBanner: false,
        theme: themeProvider.isDarkMode ? ThemeData.dark() :ThemeData.light(),
        home: const MainPage(),
      );
    }
    ),
    );
  }
}

